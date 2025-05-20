//
//  ReceiptsViewModel.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/27/25.
//

import Foundation
import SwiftUI
import SwiftData
import Vision

@Observable
class ReceiptsViewModel: ObservableObject {
    var receipts: [ReceiptsModel] = []
    var showImagePicker: Bool = false
    var sourceType: UIImagePickerController.SourceType = .photoLibrary
    var selectedUIImage: UIImage? = nil
    var showReceiptDetailImage: Bool = false
    var selectedReceiptImageData: Data? = nil

    private var context: ModelContext

    init(context: ModelContext) {
        self.context = context
        fetchReceipts()
    }

    func fetchReceipts() {
        do {
            let fetchDescriptor = FetchDescriptor<ReceiptsModel>(sortBy: [SortDescriptor(\.purchaseDate, order: .reverse)])
            receipts = try context.fetch(fetchDescriptor)
            print("📦 fetch된 receipts 개수: \(receipts.count)")
        } catch {
            print("❌ Failed to fetch receipts: \(error.localizedDescription)")
        }
    }

    func deleteReceipt(_ receipt: ReceiptsModel) {
        context.delete(receipt)
        fetchReceipts()
    }

    func extractReceiptInfo(from image: UIImage, imageData: Data) {
        guard let cgImage = image.cgImage else { return }

        let requestHandler = VNImageRequestHandler(cgImage: cgImage, options: [:])
        let request = VNRecognizeTextRequest { [weak self] (request, error) in
            guard let self = self else { return }

            if let observations = request.results as? [VNRecognizedTextObservation] {
                let recognizedStrings = observations.compactMap { $0.topCandidates(1).first?.string }
                let fullText = recognizedStrings.joined(separator: "\n")

                print("===== OCR 전체 결과 시작 =====")
                print(fullText)
                print("===== OCR 전체 결과 끝 =====")

                let parsed = self.parseWithoutRegex(from: fullText)

                let newReceipt = ReceiptsModel(
                    storeName: parsed.store,
                    purchaseDate: parsed.purchaseDate,
                    totalAmount: parsed.totalAmount,
                    imageData: imageData
                )

                self.context.insert(newReceipt)
                do {
                    try self.context.save()
                    print("✅ SwiftData 저장 성공")
                } catch {
                    print("❌ Context save 실패: \(error.localizedDescription)")
                }

                DispatchQueue.main.async {
                    self.fetchReceipts()
                }
            }
        }

        request.recognitionLevel = .accurate
        request.recognitionLanguages = ["ko-KR"]

        do {
            try requestHandler.perform([request])
        } catch {
            print("❌ OCR 실패: \(error.localizedDescription)")
        }
    }

    func parseWithoutRegex(from text: String) -> (store: String, purchaseDate: Date, totalAmount: Int) {
        let lines = text.components(separatedBy: .newlines)

        var store = "장소 없음"
        var totalAmount = 0
        var date = Date()

        var i = 0
        while i < lines.count {
            let trimmed = lines[i].trimmingCharacters(in: .whitespacesAndNewlines)
            print("🔍 \(trimmed)")

            // 장소 추출
            if store == "장소 없음", trimmed.contains("점") {
                store = trimmed
            }

            // 날짜 추출
            if let range = trimmed.range(of: #"20\d{2}-\d{2}-\d{2}\s?\d{2}:\d{2}:\d{2}"#, options: .regularExpression) {
                var dateString = String(trimmed[range])

                if !dateString.contains(" ") && dateString.count >= 17 {
                    let insertIndex = dateString.index(dateString.startIndex, offsetBy: 10)
                    dateString.insert(" ", at: insertIndex)
                }

                let formatter = DateFormatter()
                formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
                if let parsed = formatter.date(from: dateString) {
                    date = parsed
                }
            }


            // 결제 금액 추출 - 방식 1: 결제금액 + 2줄 뒤
            if trimmed.contains("결제금액"), i + 2 < lines.count {
                let priceLine = lines[i + 2].trimmingCharacters(in: .whitespaces)
                let numberOnly = priceLine.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
                if let amountParsed = Int(numberOnly) {
                    totalAmount = amountParsed
                }
            }

            // 결제 금액 추출 - 방식 2: 합계나 쉼표 포함 숫자줄
            if trimmed.contains("합계") || trimmed.range(of: #"^\d{1,3}(,\d{3})+$"#, options: .regularExpression) != nil {
                let digits = trimmed.filter { "0123456789".contains($0) }
                if let value = Int(digits) {
                    totalAmount = max(totalAmount, value)
                }
            }

            i += 1
        }

        print("🏪 매장명: \(store)")
        print("🗓️ 날짜: \(date)")
        print("💰 결제 금액: \(totalAmount)")

        return (store, date, totalAmount)
    }
}

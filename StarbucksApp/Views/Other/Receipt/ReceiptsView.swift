//
//  ReceiptsView.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/27/25.
//

import SwiftUI
import SwiftData

struct ReceiptsView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    @StateObject private var viewModel: ReceiptsViewModel
    
    @State private var selectedReceipt: ReceiptsModel? = nil

    init(context: ModelContext) {
        _viewModel = StateObject(wrappedValue: ReceiptsViewModel(context: context))
    }

    var body: some View {
        ZStack {
            NavigationStack {
                VStack(spacing: 0) {
                    ReceiptTopNavigationView(
                        title: "전자 영수증",
                        onAddTapped: { showAddReceiptSheet() },
                        onDismissTapped: { dismiss() }
                    )

                    Color("White")
                        .ignoresSafeArea(edges: .bottom)
                        .overlay(
                            VStack(spacing: 0) {
                                HStack {
                                    HStack(spacing: 0) {
                                        Text("총")
                                        Text(" \(viewModel.receipts.count)건")
                                            .foregroundStyle(Color("brown01"))
                                            .font(.mainTextSemiBold16)
                                    }
                                    Spacer()
                                    HStack(spacing: 0) {
                                        Text("사용합계")
                                        Text(" \(viewModel.receipts.map { $0.totalAmount }.reduce(0, +))")
                                            .foregroundStyle(Color("brown01"))
                                            .font(.mainTextSemiBold16)
                                    }
                                }
                                .padding(.horizontal)
                                .padding(.vertical, 12)

                                List {
                                    ForEach(viewModel.receipts, id: \.id) { receipt in
                                        HStack {
                                            VStack(alignment: .leading, spacing: 4) {
                                                Text(receipt.storeName)
                                                    .font(.mainTextSemiBold18)
                                                Text(formattedDate(receipt.purchaseDate))
                                                    .font(.mainTextMedium16)
                                                    .foregroundStyle(Color("gray03"))
                                                Text("\(receipt.totalAmount)원")
                                                    .font(.mainTextSemiBold18)
                                                    .foregroundStyle(Color("brown02"))
                                            }

                                            Spacer()

                                            Button {
                                                selectedReceipt = receipt
                                            } label: {
                                                Image("receipt_icon")
                                                    .font(.title2)
                                                    .foregroundStyle(.gray)
                                            }
                                        }
                                        .padding(.horizontal)
                                        .padding(.vertical, 12)
                                        .listRowInsets(EdgeInsets())
                                        .listRowBackground(Color("White"))
                                    }
                                    .onDelete { indexSet in
                                        for index in indexSet {
                                            viewModel.deleteReceipt(viewModel.receipts[index])
                                        }
                                    }
                                }
                                .listStyle(.plain)
                                .scrollContentBackground(.hidden)
                                .background(Color("White"))
                            }
                        )
                }
                .sheet(isPresented: $viewModel.showImagePicker) {
                    ImagePickerView(viewModel: viewModel)
                }
                .navigationBarBackButtonHidden(true)
            }

            if let receipt = selectedReceipt {
                ReceiptDetailImageView(imageData: receipt.imageData!, selectedReceipt: $selectedReceipt)
                    .zIndex(1)
                    .transition(.opacity)
                    .animation(.easeInOut, value: selectedReceipt)
            }
        }
        .onAppear {
            viewModel.fetchReceipts()
        }
    }

    private func showAddReceiptSheet() {
        let actionSheet = UIAlertController(title: "영수증을 어떻게 추가할까요?", message: nil, preferredStyle: .actionSheet)

        actionSheet.addAction(UIAlertAction(title: "앨범에서 가져오기", style: .default) { _ in
            viewModel.sourceType = .photoLibrary
            viewModel.showImagePicker = true
        })

        actionSheet.addAction(UIAlertAction(title: "카메라로 촬영하기", style: .default) { _ in
            viewModel.sourceType = .camera
            viewModel.showImagePicker = true
        })

        actionSheet.addAction(UIAlertAction(title: "취소", style: .cancel))

        UIApplication.shared.connectedScenes
            .compactMap { ($0 as? UIWindowScene)?.keyWindow }
            .first?
            .rootViewController?
            .present(actionSheet, animated: true)
    }

    private func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy.MM.dd HH:mm"
        return formatter.string(from: date)
    }
}


#Preview {
    do {
        let container = try ModelContainer(for: ReceiptsModel.self)
        return ReceiptsView(context: ModelContext(container))
    } catch {
        fatalError("Preview용 ModelContainer 생성 실패: \(error)")
    }
}

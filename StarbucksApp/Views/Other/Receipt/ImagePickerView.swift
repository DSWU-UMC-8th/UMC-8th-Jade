//
//  ImagePickerView.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/27/25.
//

import SwiftUI
import UIKit

struct ImagePickerView: UIViewControllerRepresentable {
    @Environment(\.dismiss) var dismiss
    var viewModel: ReceiptsViewModel

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.sourceType = viewModel.sourceType
        picker.allowsEditing = false
        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(viewModel: viewModel, dismiss: dismiss)
    }

    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        var viewModel: ReceiptsViewModel
        var dismiss: DismissAction

        init(viewModel: ReceiptsViewModel, dismiss: DismissAction) {
            self.viewModel = viewModel
            self.dismiss = dismiss
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                viewModel.selectedUIImage = image

                if let imageData = image.pngData() {
                    viewModel.extractReceiptInfo(from: image, imageData: imageData)
                }
            }
            dismiss()
        }
        

        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            dismiss()
        }
    }
}

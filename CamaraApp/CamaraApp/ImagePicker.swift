//
//  ImagePicker.swift
//  CamaraApp
//
//  Created by 坂上大輝 on 2021/03/07.
//

import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    
    @Binding var imagwe:Image?
    @Binding var isPicking:Bool
    
    func makeCoordinator() -> Coordinator {
     Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
    }
}






struct ImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        ImagePicker(image: .constant(nil), isPicking: .constant(true))
    }
}

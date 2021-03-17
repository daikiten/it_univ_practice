//
//  Coordinator.swift
//  CamaraApp
//
//  Created by 坂上大輝 on 2021/03/07.
//

import SwiftUI

class Coordinator: NSObject, UINavigationControllerDelegate,
                   UIImagePickerControllerDelegate {
    var parent:ImagePicker
    
    init(_ parent:ImagePicker) {
        self.parent = parent
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info:
                                [UIImagePickerController.InfoKey : Any]) {
        let uiImage = info[.originalImage] as! UIImage
        UIImageWriteToSavedPhotosAlbum(uiImage, nil, nil, nil)
        parent.image = Image(uiImage: uiImage.redraw())
        parent.isPicking = false
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        parent.isPicking = false
    }
}

//P.326までは終わっている

struct Coordinator_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}

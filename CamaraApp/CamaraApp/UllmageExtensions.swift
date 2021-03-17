//
//  UllmageExtensions.swift
//  CamaraApp
//
//  Created by 坂上大輝 on 2021/03/16.
//

import UIKit

extension UIImage {
    func redraw() -> UIImage {
        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        return UIGraphicsImageRenderer(size: size, format: format)
            .image { context in
                draw(in: CGRect(origin: .zero, size: size))
                
            }
    }
}

//
//  ImageBarButton.swift
//  DragonBall
//
//  Created by Juan Esquivel on 28/07/21.
//

import UIKit
import Foundation

class ImageBarButton: UIView {
    var imageView: UIImageView!
    var button: UIButton!
    /// Función para darle formato personalizado a los botones del navigationBar.
    /// - Parameters:
    ///   - image: Imagen que tendrá el botón.
    ///   - frame: Tamaño que tendrá el botón.
    convenience init(withImage image: UIImage? = nil, frame: CGRect = CGRect(x: 0, y: 0, width: 30, height: 30)) {
        self.init(frame: frame)

        imageView = UIImageView(frame: frame)
        imageView.backgroundColor = .clear
//        imageView.layer.cornerRadius = frame.height/2
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        addSubview(imageView)

        button = UIButton(frame: frame)
        button.backgroundColor = .clear
        button.setTitle("", for: .normal)
        addSubview(button)

        if let image = image {
            self.imageView.image = image
        }
    }

    func load()-> UIBarButtonItem {
        return UIBarButtonItem(customView: self)
    }
}

//
//  ViewController.swift
//  gif_project
//
//  Created by Jackson on 25/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    let IMAGE_NUMBERS = 15
    let IMAGE_PREFIX = "frame_"
    let FIRST_IMAGE_INDEX = 0
    let IMAGE_SUFIX = "_delay.jpg"
    
    var currentImageIndex = 0
    
    lazy var liza: UIImageView = {
        let imageIndexName = String(format: "%03d", FIRST_IMAGE_INDEX)
        let imageName = IMAGE_PREFIX + imageIndexName + IMAGE_SUFIX
        let image = UIImage(named: imageName)
        let view = UIImageView(image: image)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    
    lazy var button: UIButton = {
        let view = UIButton()
        
        view.setTitle("Next image", for: .normal)
        view.addTarget(self, action: #selector(onNextImageTap), for: .touchUpInside)
        view.backgroundColor = .blue
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    
    @objc func onNextImageTap(sender: UIButton!) {
        currentImageIndex += 1
        
        if currentImageIndex > IMAGE_NUMBERS {
            currentImageIndex = FIRST_IMAGE_INDEX
        }
        
        let nextImageNumber = String(format: "%03d", currentImageIndex)
        
        liza.image = UIImage(named: "\(IMAGE_PREFIX)\(nextImageNumber)\(IMAGE_SUFIX)")
    }
    
    func constraintImage() {
        liza.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        liza.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
    
    func constraintButton() {
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.topAnchor.constraint(equalTo: self.liza.bottomAnchor, constant: 40).isActive = true
        button.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 40).isActive = true
        button.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -40).isActive = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(liza)
        view.addSubview(button)
        
        constraintImage()
        constraintButton()
    }


}


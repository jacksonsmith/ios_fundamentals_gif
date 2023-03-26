//
//  ViewController.swift
//  gif_project
//
//  Created by Jackson on 25/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    
    lazy var liza: UIImageView = {
        let imageName = "frame_00_delay-0.1s.gif"
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
        count += 1
        
        if count > 11 {
            count = 0
        }
        
        let nextImageNumber = String(format: "%02d", count)
        
        liza.image = UIImage(named: "frame_\(nextImageNumber)_delay-0.1s.gif")
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


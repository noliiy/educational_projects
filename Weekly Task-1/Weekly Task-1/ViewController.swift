//
//  ViewController.swift
//  Weekly Task-1
//
//  Created by Emre Erdem on 25.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var imageViewNumber = 0
    let array: [String] = ["apple","strawberry","pear","Banana"]

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: array[0])
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
//        imageView.image = [UIImage(imageLiteralResourceName: "apple"),
//        UIImage(imageLiteralResourceName: "strawberry"),
//        UIImage(imageLiteralResourceName: "pear"),
//        UIImage(imageLiteralResourceName: "Banana")][imageViewNumber]
        
        imageViewNumber = (imageViewNumber + 1) % array.count
        imageView.image = UIImage(named: array[imageViewNumber])
    }
    
}


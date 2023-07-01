//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // İlk olarak control ile zarları seçip isim atadın
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 1
    
    var rightDiceNumber = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        //Burası zarların görünümünün değiştirildiği ya da editlendiği yer ve burada "who.what=value" gördün
        
        // sadece olayı anlamak için saydamlaştırmayı gösterdi ama güzel görünmediği için kaldırdım kod: diceImageView1.alpha = 0.5
        
        
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Çalıştı")
    }
//Roll buton olduğu için süslü iki parantezin arasına yaptın ve buton action olduğu için farklı bir kod yazımı oldu. Print bölümüne yazmamızın sebebi konsolda görünmesini istediğimiz için.
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        var diceArray = [UIImage(imageLiteralResourceName: "DiceOne"), UIImage(imageLiteralResourceName: "DiceTwo"), UIImage(imageLiteralResourceName: "DiceThree"), UIImage(imageLiteralResourceName: "DiceFour"), UIImage(imageLiteralResourceName: "DiceFive"), UIImage(imageLiteralResourceName: "DiceSix")]
        
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        
//        Sağ zar bölümü
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
    }
    
}


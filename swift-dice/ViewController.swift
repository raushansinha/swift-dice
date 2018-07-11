//
//  ViewController.swift
//  swift-dice
//
//  Created by Raushan Sinha on 7/10/18.
//  Copyright © 2018 Raushan Sinha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstDice: UIImageView!
    @IBOutlet weak var secondDice: UIImageView!
    
    let diceImages = ["dice1","dice2","dice3","dice4","dice5","dice6",];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        SetDiceImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onRollButtonClicked(_ sender: Any) {
        SetDiceImage()
    }
    
    
    func SetDiceImage() {
        let firstImageIndex = Int(arc4random_uniform(6))
        let secondImageIndex = Int(arc4random_uniform(6))
        
        firstDice.image = UIImage(named: diceImages[firstImageIndex])
        secondDice.image = UIImage(named: diceImages[secondImageIndex])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        SetDiceImage();
    }
}


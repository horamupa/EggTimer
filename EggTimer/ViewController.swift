//
//  ViewController.swift
//  EggTimer
//
//  Created by MM on 07.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime =  5
    let mediumTime = 6
    let hardTime = 9
    

    @IBAction func buttonPressed(_ sender: UIButton) {
        let hardness = sender.titleLabel?.text
        switch hardness {
        case "4": print("Soft")
        case "5": print("Soft")
        case "6": print("Medium")
        case "7": print("Medium")
        case "8": print("Hard")
        case "9": print("Hard")
        default: print("Error")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


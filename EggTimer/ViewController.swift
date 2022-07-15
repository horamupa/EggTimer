//
//  ViewController.swift
//  EggTimer
//
//  Created by MM on 07.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let boilTime = ["4": 4, "5": 5, "6": 6, "7": 7, "8": 8, "9": 9,]
    var timer = Timer()
    var count: Float = 0
    
    @IBOutlet var mainLabel: UILabel!
    
    @IBOutlet var progressBar: UIProgressView!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        timer.invalidate()
        
        var secondsRemaining = Float(sender.titleLabel!.text!)!
        
//        var progressGo = Int(sender.titleLabel!.text!)!
        
        let hardness = sender.titleLabel?.text
        
        print(boilTime[hardness!]!)
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            
            if secondsRemaining > self.count  {
                    print ("\(secondsRemaining) seconds")
                    self.progressBar.progress = Float(secondsRemaining) / Float(sender.titleLabel!.text!)!
                self.count += 1
                } else {
                    self.mainLabel.text = "Done"
                    Timer.invalidate()
                }
            }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}


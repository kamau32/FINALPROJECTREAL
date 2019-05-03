//
//  ViewController.swift
//  FinalProjectKamauRowe
//
//  Created by Mark Sandomeno on 4/29/19.
//  Copyright © 2019 Mark Sandomeno. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var guestsLabel: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var moneyAmount: UITextField!
    
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
    
        guestsLabel.text = Int(sender.value).description
        
        
    }
    
   
    
    @IBAction func split(_ sender: Any) {
        
      
            let currentGuestAmount = Double(guestsLabel.text!)
            let actualMoneyAmount = Double(self.moneyAmount.text!)
            
            resultLabel.text = String("\(actualMoneyAmount! / currentGuestAmount!)")
            
            audioPlayer.play()
        
     
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        let sound = Bundle.main.path(forResource: "click", ofType: "mp3")
        
        do {
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        
        catch {
            
            print(error)
        }
        
    
        stepper.autorepeat = true
        stepper.maximumValue = 10
    }


}


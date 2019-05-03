//
//  checkRoulette.swift
//  FinalProjectKamauRowe
//
//  Created by Mark Sandomeno on 4/30/19.
//  Copyright © 2019 Mark Sandomeno. All rights reserved.
//


import UIKit
import AVFoundation

class checkRoulette: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    
    @IBOutlet weak var finalLabel: UILabel!
    
    @IBAction func chosseButton(_ sender: Any) {
        
        selectPayer()
        
    }
    
    //all name choices
    @IBOutlet weak var one: UITextField!
    @IBOutlet weak var two: UITextField!
    @IBOutlet weak var three: UITextField!
    @IBOutlet weak var four: UITextField!
    @IBOutlet weak var five: UITextField!
    @IBOutlet weak var six: UITextField!
    @IBOutlet weak var seven: UITextField!
    @IBOutlet weak var eight: UITextField!
    @IBOutlet weak var nine: UITextField!
    @IBOutlet weak var ten: UITextField!
    
  
    
    func selectPayer() {
    
       let randomNumber = Int.random(in: 1..<10)
        
        switch randomNumber {
            
        case 1:
            
            finalLabel.text = one.text!
            
            if one.text! == "" {
                
                finalLabel.text = "re-draw"
            }

        case 2:
            
             finalLabel.text = two.text!
            
            if two.text! == "" {
                
                finalLabel.text = "re-draw"
            }

        case 3:
            
             finalLabel.text = three.text!
            
            if three.text! == "" {
                
                finalLabel.text = "re-draw"
            }
            
            
        case 4:
            
             finalLabel.text = four.text!
            
            if four.text! == "" {
                
                finalLabel.text = "re-draw"
            }
            
            
        case 5:
            
             finalLabel.text = five.text!
            
            if five.text! == "" {
                
                finalLabel.text = "re-draw"
            }
            
            
        case 6:
            
            finalLabel.text = six.text!
            
            if six.text! == "" {
                
                finalLabel.text = "re-draw"
            }
            
            
        case 7:
            
             finalLabel.text = seven.text!
            
            if seven.text! == "" {
                
                finalLabel.text = "re-draw"
            }
            
            
        case 8:
            
             finalLabel.text = eight.text!
            
            if eight.text! == "" {
                
                finalLabel.text = "re-draw"
            }
            
            
        case 9:
            
             finalLabel.text = nine.text!
            
            if nine.text! == "" {
                
                finalLabel.text = "re-draw"
            }
            
            
        case 10:
            
            finalLabel.text = ten.text!
            
            if ten.text! == "" {
                
                finalLabel.text = "re-draw"
            }
            
        
            
        default:
            
        finalLabel.text = five.text!
        
        }
    
    }
}

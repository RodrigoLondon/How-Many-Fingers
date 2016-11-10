//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Lewis Jones on 11/10/2015.
//  Copyright © 2015 Rodrigo Pena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userGuessTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func guess(sender: AnyObject) {
        
        let diceRoll = String(arc4random_uniform(6))
        
        if diceRoll == userGuessTextField.text {
            
            resultLabel.text = "You are right!"
            
        } else {
        
        resultLabel.text = "Wrong! It was a " + diceRoll
        
    }
        
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


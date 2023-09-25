//
//  ViewController.swift
//  tallyApp
//
//  Created by Tyler May on 9/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var incrimentTextField: UITextField!
    
    @IBOutlet weak var resetTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    

    var incriment = 1
    var number = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func increaseButtonTapped(_ sender: Any) {

        if incrimentTextField.text!.isEmpty {
           incriment = 1
        } else {
            incriment = Int(incrimentTextField.text!) ?? 1
        }
        number += incriment
        resultLabel.text = String(number)
    }
    
    @IBAction func decreaseButtonTapped(_ sender: Any) {
        if incrimentTextField.text!.isEmpty {
            incriment = -1
        } else {
            incriment = Int(incrimentTextField.text!) ?? -1
        }
        number -= incriment
        resultLabel.text = String(number)
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        resultLabel.text = resetTextField.text
        number = Int(resetTextField.text!) ?? 0
    }
    
    
}


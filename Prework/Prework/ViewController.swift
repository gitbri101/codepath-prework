//
//  ViewController.swift
//  Prework
//
//  Created by Brianna Kamdoum on 8/16/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        
    //bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
    //total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
    //update tip amount total label
        tipAmountLabel.text = String(format:"$%.2f", tip)
        
    //update total amount
        totalLabel.text = String(format:"$%.2f", total)
        
    }
    
}

//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Spoorthi Dhulappanavar on 27/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipcontrol: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
            let bill = Double(billField.text!) ?? 0
            let tipPercent = [0.15, 0.18, 0.2]
            let tip = bill * tipPercent[tipcontrol.selectedSegmentIndex]
            let total = bill + tip
            tipLabel.text = String(format: "$%.2f", tip)
            totalLabel.text = String(format: "$%.2f", total)
        
    }
}



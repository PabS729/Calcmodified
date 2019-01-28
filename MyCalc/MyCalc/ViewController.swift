//
//  ViewController.swift
//  MyCalc
//
//  Created by Minjing Shi on 1/27/19.
//  Copyright © 2019 Minjing Shi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var BillField: UITextField!
    
    @IBOutlet weak var Totallabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var TipControl: UISegmentedControl!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
     @IBAction func calculatetips(_ sender: Any) {
        let tippercentagees = [0.15,0.18,0.2]
        let bill = Double(BillField.text!) ?? 0
        let tip = bill * tippercentagees[TipControl.selectedSegmentIndex];
        let total = bill + tip
        
        TipLabel.text = String (format: "$%.2f",tip)
        Totallabel.text = String (format: "$%.2f",total)
    }

}


//
//  ViewController.swift
//  Calc
//
//  Created by Minjing Shi on 1/20/19.
//  Copyright © 2019 Minjing Shi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var Totallabel: UILabel!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var BiLLField: UITextField!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    
    @IBAction func calculatetips(_ sender: Any) {
        let tippercentagees = [0.15,0.18,0.2]
        var bill = Double(BiLLField.text!) ?? 0
        let tip = bill * tippercentagees[TipControl.selectedSegmentIndex];
        let total = bill + tip
        
        TipLabel.text = String (format: "$%.2f",tip)
        Totallabel.text = String (format: "$%.2f",total)
    }
    

    
    
    
    
    
    
    @IBOutlet weak var tIPLABEL: UILabel!
}


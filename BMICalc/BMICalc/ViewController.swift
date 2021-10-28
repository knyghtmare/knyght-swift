//
//  ViewController.swift
//  BMICalc
//
//  Created by Tahsin Jahin Khalid on 29/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightVal: UILabel!
    
    @IBOutlet weak var heightVal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func weightChange(_ sender: UISlider) {
        // change weight value
        let weight = Int(sender.value)
        weightVal.text = String(weight)
    }
    
    @IBAction func heightChange(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightVal.text = height
    }
    

}


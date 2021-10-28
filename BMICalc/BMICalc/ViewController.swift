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
    
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    var bmiVal: String = "0.0"
    
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
    
    @IBAction func calculate(_ sender: UIButton) {
        let weight = Double(weightSlider.value)
        let height = Double(heightSlider.value)
        
        let bmi = weight/pow(height, 2)
        
        // print(bmi)
        bmiVal = String(format: "%.1f", bmi)
        
        // switch to second view
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.VarBMIValue = bmiVal
        }
    }

}


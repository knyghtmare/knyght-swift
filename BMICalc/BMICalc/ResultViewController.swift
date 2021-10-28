//
//  ResultViewController.swift
//  BMICalc
//
//  Created by Tahsin Jahin Khalid on 29/10/21.
//

import UIKit

class ResultViewController: UIViewController {
    
    var VarBMIValue: String?
    
    @IBOutlet weak var BMILabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        BMILabel.text = VarBMIValue
    }
    
    @IBAction func ReturnToMainView(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

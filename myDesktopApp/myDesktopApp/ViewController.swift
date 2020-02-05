//
//  ViewController.swift
//  myDesktopApp
//
//  Created by Tahsin Jahin Khalid on 05/02/2020.
//  Copyright © 2020 Tahsin Jahin Khalid. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var input: NSTextField!
    
    @IBOutlet weak var type: NSSegmentedControl!
    
    @IBOutlet weak var output: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        typeChange(self )
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func typeChange(_ sender: Any) {
        
        switch type.selectedSegment {
            
            case 0:
                output.stringValue = labelOne(input.stringValue)
            
            case 1:
                output.stringValue = labelTwo(input.stringValue)
            
            case 2:
                output.stringValue = labelThree(input.stringValue)
            
            case 3:
                output.stringValue = labelFour(input.stringValue)
            
            default:
                // default case will produce the input
                // as output
                output.stringValue = input.stringValue
            
        }
    }
    
    @IBAction func copyToPasteboard(_ sender: Any) {
        NSPasteboard.general.clearContents()
        NSPasteboard.general.setString(output.stringValue, forType: .string)
    }
    
    func controlTextDidChanged(_ obj: Notification) {
        typeChange(self)
    }
    
    func labelOne(_ input: String) -> String {
        return "Label One: " + input
    }
    
    func labelTwo(_ input: String) -> String {
        return "Label Two: " + input
    }
    
    func labelThree(_ input: String) -> String {
        return "Label Three: " + input
    }
    
    func labelFour(_ input: String) -> String {
        return "Label Four: " + input
    }
    
}


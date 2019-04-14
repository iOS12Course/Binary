//
//  ViewController.swift
//  Binary
//
//  Created by Ricardo Herrera Petit on 4/13/19.
//  Copyright © 2019 Ricardo Herrera Petit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valueEntrytextField: UITextField!
    @IBOutlet weak var binaryBtn: UIButton!
    @IBOutlet weak var decimalBtn: UIButton!
    
    let placeholder = NSAttributedString(string: "Enter a value...", attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), NSAttributedString.Key.font: UIFont(name: "Menlo", size: 36.0)!])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        valueEntrytextField.attributedPlaceholder = placeholder
        valueEntrytextField.addTarget(self, action: #selector(textFieldTextDidChanged), for: .editingChanged)
        disableBtns()
    }
    
    @objc func textFieldTextDidChanged() {
        if valueEntrytextField.text == "" {
            disableBtns()
        } else {
           enableBtns()
        }
    }
    
    func disableBtns() {
        binaryBtn.isEnabled = false
        binaryBtn.alpha = 0.5
        decimalBtn.isEnabled = false
        decimalBtn.alpha = 0.5
    }
    
    func enableBtns() {
        binaryBtn.isEnabled = true
        binaryBtn.alpha = 1
        decimalBtn.isEnabled = true
        decimalBtn.alpha = 1
    }

    @IBAction func binaryBtnWasPressed(_ sender: Any) {
       
    }
    
    @IBAction func decimalBtnWasPressed(_ sender: Any) {
    }
    

}


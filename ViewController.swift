//
//  ViewController.swift
//  Key Transposer
//
//  Created by Nick Simone on 2021-03-04.
//

import Foundation
import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var keyPicker: UIPickerView!
    
    let pickerData = Constants.KEYS
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        keyPicker.delegate = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // move other pickers here
    }
}

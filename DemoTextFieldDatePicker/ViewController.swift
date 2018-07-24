//
//  ViewController.swift
//  DemoTextFieldDatePicker
//
//  Created by nws on 7/24/18.
//  Copyright © 2018 nws. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtInputDatePicker: UITextField!
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createDatePicker()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // design show Picker on UI
    func createDatePicker() {
        
        datePicker.datePickerMode = .date
        // enable picker
        txtInputDatePicker.inputView = datePicker
        
        // create a toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        // add button on this toolbar
        let btnDone = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneOnClicked))
        toolbar.setItems([btnDone], animated: true)
        
        txtInputDatePicker.inputAccessoryView = toolbar
        
    }
    
    // get data from Picker
    @objc func doneOnClicked() {
        // format the date display in textField
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        txtInputDatePicker.text = dateFormatter.string(from: datePicker.date);        self.view.endEditing(true)
    }
}


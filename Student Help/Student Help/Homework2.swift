//
//  Homework2.swift
//  Student Help
//
//  Created by AnhDuy Ha on 13/5/18.
//  Copyright © 2018 AnhDuy Ha. All rights reserved.
//

import UIKit

class Homework2: UIViewController {

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var inputDate: UITextField!
    
    //Add new item/homework
    @IBAction func addHomework(_ sender: UIButton)
    {
        if ((input.text != nil) && inputDate.text != "")//if the textfield has text then perform the command under
        {
            list.append("\(input.text!)- \(inputDate.text!)")
            input.text = ""
            inputDate.text = ""
        }
        
    }
    
    let picker = UIDatePicker()
    
    
    func createDatePicker() {
        
        //todo bar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //done button for toolbar
        let done = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([done], animated: false)
        
        inputDate.inputAccessoryView = toolbar
        inputDate.inputView = picker
        
        // format picker for date
        picker.datePickerMode = .date
    }
    
    
    
    @objc func donePressed() {
        // format date
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        let dateString = formatter.string(from: picker.date)
        
        inputDate.text = "\(dateString)"
        self.view.endEditing(true)
    }
    
    
    
    //hide keyboard when click away
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createDatePicker()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

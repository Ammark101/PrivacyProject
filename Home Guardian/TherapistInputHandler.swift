//
//  TherapistInputHandler.swift
//  Home Guardian
//
//  Created by Timothy Dai on 2/21/19.
//  Copyright © 2019 Capstone. All rights reserved.
//

import UIKit

class TherapistInputHandler: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var clinicTextBox: UITextField!
    @IBOutlet weak var clinicDropDown: UIPickerView!
    
    @IBOutlet weak var therapistWorkEmail: UITextField!
    @IBOutlet weak var therapistPassword: UITextField!
    
    //Clinic List
    var clinicList = ["Mercy","Sparks"]
    
    //Therapist List
    //var therapistList = ["Adam","Bob"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        let countrows: Int = clinicList.count
        //if pickerView == therapistDropDown {
            //countrows = therapistList.count
        //}
        
        return countrows
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if pickerView == clinicDropDown {
            let titleRow = clinicList[row]
            return titleRow
        }
            
        //else if pickerView == therapistDropDown {
            //let titleRow = therapistList[row]
            //return titleRow
        //}
        
        self.view.endEditing(true)
        return ""
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == clinicDropDown{
            self.clinicTextBox.text = self.clinicList[row]
            self.clinicDropDown.isHidden = true
        }
        //else if pickerView == therapistDropDown{
            //self.therapistTextBox.text = self.therapistList[row]
            //self.therapistDropDown.isHidden = true        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if textField == self.clinicTextBox {
            self.clinicDropDown.isHidden = false
            //if you don't want the users to se the keyboard type:
            
            textField.endEditing(true)
        }
        //else if (textField == self.therapistTextBox){
            //self.therapistDropDown.isHidden = false
            
            //textField.endEditing(true)
            
        //}
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
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

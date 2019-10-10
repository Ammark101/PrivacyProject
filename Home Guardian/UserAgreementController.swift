//
//  UserAgreementController.swift
//  Home Guardian
//
//  Created by Timothy Dai on 2/19/19.
//  Copyright © 2019 Capstone. All rights reserved.
//

import UIKit

class UserAgreementController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func userAgreementPopUp(_ sender: Any) {
        let actionSheet = UIAlertController(title: "User Agreement", message: "Choose part to view", preferredStyle: . actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Terms and Conditions", style: .default, handler: { (action:UIAlertAction) in
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "tac") as! UserAgreementSections
            self.present(vc, animated: true, completion: nil)
            
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Privacy Policy Part 1", style: .default, handler: { (action:UIAlertAction) in
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ppa") as! UserAgreementSections
            self.present(vc, animated: true, completion: nil)
            
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Privacy Policy Part 2", style: .default, handler: { (action:UIAlertAction) in
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ppb") as! UserAgreementSections
            self.present(vc, animated: true, completion: nil)
            
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Privacy Policy Part 3", style: .default, handler: { (action:UIAlertAction) in
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ppc") as! UserAgreementSections
            self.present(vc, animated: true, completion: nil)
            
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Disclaimer/Liability", style: .default, handler: { (action:UIAlertAction) in
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "dsc") as! UserAgreementSections
            self.present(vc, animated: true, completion: nil)
            
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        
        self.present(actionSheet, animated: true, completion: nil)
    }
    
}

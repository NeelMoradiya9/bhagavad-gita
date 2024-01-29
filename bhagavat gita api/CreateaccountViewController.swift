//
//  CreateaccountViewController.swift
//  bhagavat gita api
//
//  Created by Neel  on 27/01/24.
//

import UIKit

class CreateaccountViewController: UIViewController {
    
    @IBOutlet weak var idtxtoutlet: UITextField!
    @IBOutlet weak var phonenumbertxtoutlet: UITextField!
    @IBOutlet weak var reenterpasstxtoutlet: UITextField!
    @IBOutlet weak var OTPtxtOutlet: UITextField!
    @IBOutlet weak var Passwordtxtoutlet: UITextField!
    @IBOutlet weak var createbtnoutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        createbtnoutlet.layer.cornerRadius = 10
    }
    
    
    @IBAction func backbtnact(_ sender: Any) {
        let a = storyboard?.instantiateViewController(withIdentifier: "LoginpageViewController") as!
        LoginpageViewController
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func createbtnacct(_ sender: Any) {
        if idtxtoutlet.text == "" && phonenumbertxtoutlet.text == "" && OTPtxtOutlet.text == "" && Passwordtxtoutlet.text == "" && reenterpasstxtoutlet.text == ""{
            alert(message: "Enter Your Details...")
        }else if phonenumbertxtoutlet.text == "" && OTPtxtOutlet.text == "" && Passwordtxtoutlet.text == "" && reenterpasstxtoutlet.text == "" {
            alert(message: "Enter Your Details...")
        } else if OTPtxtOutlet.text == "" && Passwordtxtoutlet.text == "" && reenterpasstxtoutlet.text == "" {
            alert(message: "Enter Your Details...")
        } else if Passwordtxtoutlet.text == "" && reenterpasstxtoutlet.text == "" {
            alert(message: "Enter Your Details...")
        } else if reenterpasstxtoutlet.text == ""{
            alert(message: "Enter Your Details...")
        } else
        {
            navigation()
        }
    }
    func alert(message : String){
        
        let a = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        
        a.addAction((UIAlertAction.init(title: "Okay", style: .default, handler: nil)))
        
        a.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        
        present(a,animated: true)
    }
    
    func navigation(){
        let a = storyboard?.instantiateViewController(withIdentifier: "LoginpageViewController") as!
        LoginpageViewController
        navigationController?.popViewController(animated: true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}


//
//  forgotpasswordViewController.swift
//  bhagavat gita api
//
//  Created by Neel  on 27/01/24.
//

import UIKit

class forgotpasswordViewController: UIViewController {

    @IBOutlet weak var phonenumbertxtoutlet: UITextField!
    @IBOutlet weak var OTPtxtoutlet: UITextField!
    @IBOutlet weak var passwordtxtoutlet: UITextField!
    @IBOutlet weak var reenterpassbtnoutlet: UITextField!
    @IBOutlet weak var resetbtnoutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        resetbtnoutlet.layer.cornerRadius = 10
    }
    
    @IBAction func backbtnaction(_ sender: Any) {
        let a = storyboard?.instantiateViewController(withIdentifier: "LoginpageViewController") as!
        LoginpageViewController
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func resetbtnact(_ sender: Any) {
        if phonenumbertxtoutlet.text == "" && OTPtxtoutlet.text == "" && passwordtxtoutlet.text == "" && reenterpassbtnoutlet.text == "" {
            alert(message: "Enter Your Details...")
        }else if OTPtxtoutlet.text == "" && passwordtxtoutlet.text == "" && reenterpassbtnoutlet.text == ""  {
            alert(message: "Enter Your Details...")
        } else if passwordtxtoutlet.text == "" && reenterpassbtnoutlet.text == "" {
            alert(message: "Enter Your Details...")
        } else if reenterpassbtnoutlet.text == "" {
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
        
    }

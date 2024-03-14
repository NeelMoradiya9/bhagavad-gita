//
//  LoginpageViewController.swift
//  bhagavat gita api
//
//  Created by Neel  on 27/01/24.
//

import UIKit

class LoginpageViewController: UIViewController {
    var switchison = true
    @IBOutlet weak var loginbtn: UIButton!
    @IBOutlet weak var idtxtoutlet: UITextField!
    @IBOutlet weak var passwordtxtoutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginbtn.layer.cornerRadius = 10
    }

    
    @IBAction func createbuttonaction(_ sender: Any) {
        let a = storyboard?.instantiateViewController(withIdentifier: "CreateaccountViewController") as!
        CreateaccountViewController
        navigationController?.pushViewController(a, animated: true)
    }
    
    @IBAction func Resetbtnaction(_ sender: Any) {
        let a = storyboard?.instantiateViewController(withIdentifier: "forgotpasswordViewController") as!
        forgotpasswordViewController
        navigationController?.pushViewController(a, animated: true)
    }
    
    @IBAction func loginbtnact(_ sender: Any) {
        if idtxtoutlet.text == "" && passwordtxtoutlet.text == ""
        {
            alert(message:"Enter Your id and Password..")
        }
        else if idtxtoutlet.text == ""
        {
            alert(message: "Enter your Id....")
        }
        else if passwordtxtoutlet.text == ""
        {
            alert(message: "Enter your Password...")
        }
        else
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
    func navigation()
    {
        let a = storyboard?.instantiateViewController(withIdentifier: "mainpageViewController") as!
        mainpageViewController
        navigationController?.pushViewController(a, animated: true)
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}




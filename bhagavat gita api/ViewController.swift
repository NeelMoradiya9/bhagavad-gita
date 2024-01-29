//
//  ViewController.swift
//  bhagavat gita api
//
//  Created by Neel  on 06/10/23.
//

import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var SignupButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        SignupButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func signupbuttonaction(_ sender: Any) {
        let a = storyboard?.instantiateViewController(withIdentifier: "LoginpageViewController") as!
        LoginpageViewController
        navigationController?.pushViewController(a, animated: true)
    }
    
}


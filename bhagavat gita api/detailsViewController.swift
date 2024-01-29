//
//  detailsViewController.swift
//  bhagavat gita api
//
//  Created by Neel  on 27/01/24.
//

import UIKit

class detailsViewController: UIViewController {
    var chapters = String()
    var names = String()
    var verses = String()
    var summery = String()
    var summery2 = String()
    var slug = String()
    @IBOutlet weak var chaptersoutlet: UILabel!
    @IBOutlet weak var nameoutlet: UILabel!
    @IBOutlet weak var versesoutlet: UILabel!
    @IBOutlet weak var summeryoutlet: UILabel!
    @IBOutlet weak var chaptersummery2: UILabel!
    @IBOutlet weak var slugoutlet: UILabel!
    @IBOutlet weak var backbutttonoutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chaptersoutlet.text = chapters
        nameoutlet.text = names
        versesoutlet.text  = verses
        summeryoutlet.text = summery
        chaptersummery2.text = summery2
        slugoutlet.text = slug
        backbutttonoutlet.layer.cornerRadius = 10
    }
    
    @IBAction func returntbnaction(_ sender: Any) {
        let a = storyboard?.instantiateViewController(withIdentifier: "mainpageViewController") as!
        mainpageViewController
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func backbtnact(_ sender: Any) {
        let a = storyboard?.instantiateViewController(withIdentifier: "mainpageViewController") as!
        mainpageViewController
        navigationController?.popViewController(animated: true)
    }
}

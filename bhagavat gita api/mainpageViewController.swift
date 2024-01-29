//
//  mainpageViewController.swift
//  bhagavat gita api
//
//  Created by Neel  on 27/01/24.
//

import UIKit
struct Data1Element: Codable {
    let id: Int
    let name, slug, nameTransliterated, nameTranslated: String
    let versesCount, chapterNumber: Int
    let nameMeaning, chapterSummary, chapterSummaryHindi: String
    
    enum CodingKeys: String, CodingKey {
        case id, name, slug
        case nameTransliterated = "name_transliterated"
        case nameTranslated = "name_translated"
        case versesCount = "verses_count"
        case chapterNumber = "chapter_number"
        case nameMeaning = "name_meaning"
        case chapterSummary = "chapter_summary"
        case chapterSummaryHindi = "chapter_summary_hindi"
    }
}


class mainpageViewController: UIViewController , UITableViewDelegate , UITableViewDataSource  {
    
    @IBOutlet weak var mainpagetableviewoutlet: UITableView!
    var arrayuser = [Data1Element]()
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }
    
    func getData(){
        let url = URL(string: "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/?limit=18")
        var ur = URLRequest(url: url!)
        ur.httpMethod = "GET"
        ur.allHTTPHeaderFields = ["X-RapidAPI-Key":"00153a3da5msh6e7c4e60d53bcb2p1b3ba9jsn1d6eaefe0774"]
        
        URLSession.shared.dataTask(with: ur) { data, response, error in
            do {
                if error == nil {
                    self.arrayuser = try JSONDecoder().decode([Data1Element].self, from: data!)
                    DispatchQueue.main.async{ [self] in
                        mainpagetableviewoutlet.reloadData()
                    }
                    
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayuser.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! mainpageTableViewCell
        cell.chapternumberoutlet.text = String(arrayuser[indexPath.row].id)
        cell.namelabeloutlet.text = arrayuser[indexPath.row].name
        cell.versesoutlet.text = String(arrayuser[indexPath.row].versesCount)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigation(name: String(arrayuser[indexPath.row].id), form: arrayuser[indexPath.row].name, verse: String(arrayuser[indexPath.row].versesCount), summerys: arrayuser[indexPath.row].chapterSummary, summeryhindi: arrayuser[indexPath.row].chapterSummaryHindi, slug: arrayuser[indexPath.row].slug)
    }
    
    func navigation(name : String ,form : String , verse : String , summerys : String , summeryhindi : String ,slug : String){
        let a  = storyboard?.instantiateViewController(identifier: "detailsViewController")as!
        detailsViewController
        a.chapters = name
        a.names = form
        a.verses = verse
        a.summery = summerys
        a.summery2 = summeryhindi
        a.slug = slug
        navigationController?.pushViewController(a, animated: true)
    }
    
}

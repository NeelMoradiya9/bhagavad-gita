//
//  mainpageTableViewCell.swift
//  bhagavat gita api
//
//  Created by Neel  on 27/01/24.
//

import UIKit

class mainpageTableViewCell: UITableViewCell {

    @IBOutlet weak var namelabeloutlet: UILabel!
    @IBOutlet weak var chapternumberoutlet: UILabel!
    @IBOutlet weak var versesoutlet: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

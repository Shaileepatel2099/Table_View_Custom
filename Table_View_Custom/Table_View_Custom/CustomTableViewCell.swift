//
//  CustomTableViewCell.swift
//  Table_View_Custom
//
//  Created by Parth Patel on 2023-03-28.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var CellImage: UIImageView!
    @IBOutlet weak var CellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

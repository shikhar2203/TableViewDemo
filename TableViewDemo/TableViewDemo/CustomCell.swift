//
//  CustomCell.swift
//  TableViewDemo
//
//  Created by shikhar on 27/08/23.
//

import UIKit

class CustomCell: UITableViewCell {

    
    @IBOutlet weak var CustomImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

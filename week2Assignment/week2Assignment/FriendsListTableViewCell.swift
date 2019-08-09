//
//  FriendsListTableViewCell.swift
//  week2Assignment
//
//  Created by Su Win Phyu on 8/9/19.
//  Copyright © 2019 swp. All rights reserved.
//

import UIKit

class FriendsListTableViewCell: UITableViewCell {
    
    static let identifier = "FriendsListTableViewCell"

    @IBOutlet weak var imgProfile: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
        imgProfile.layer.cornerRadius = imgProfile.frame.height/2
        imgProfile.clipsToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

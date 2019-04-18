//
//  SportsEventTableViewCell.swift
//  Sports Events
//
//  Created by Dale Musser on 2/21/19.
//  Copyright © 2019 Tech Innovator. All rights reserved.
//

import UIKit

class SportsEventTableViewCell: UITableViewCell {
    @IBOutlet weak var sportImageView: UIImageView!
    @IBOutlet weak var matchupLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

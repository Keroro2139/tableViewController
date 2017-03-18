//
//  RestaurantTableViewCell.swift
//  FoodPin
//
//  Created by student on 3/17/2560 BE.
//  Copyright © 2560 Burapha University. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {


    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

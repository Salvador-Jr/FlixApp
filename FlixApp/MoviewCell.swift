//
//  MoviewCell.swift
//  FlixApp
//
//  Created by Salvador Rodriguez on 2/1/19.
//  Copyright © 2019 009252542SalvadorRodriguez. All rights reserved.
//

import UIKit

class MoviewCell: UITableViewCell {
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var synopsisLable: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

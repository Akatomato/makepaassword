//
//  PasswordTableViewCell.swift
//  makepaassword
//
//  Created by tunakan2525 on 2019/10/20.
//  Copyright © 2019 吉本裕晴. All rights reserved.
//

import UIKit

class PasswordTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var password: UILabel!
    @IBOutlet weak var passwordName: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

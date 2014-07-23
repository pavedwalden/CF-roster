//
//  PersonCell.swift
//  ClassRosterB19
//
//  Created by Alex on 7/22/14.
//  Copyright (c) 2014 Alex Rice. All rights reserved.
//

import UIKit

class PersonCell: UITableViewCell {
    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!

    init(style: UITableViewCellStyle, reuseIdentifier: String) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // Initialization code
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

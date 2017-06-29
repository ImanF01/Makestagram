//
//  PostHeaderCell.swift
//  Makestagram
//
//  Created by Iman F on 6/28/17.
//  Copyright © 2017 Iman F (group project). All rights reserved.
//

import UIKit

class PostHeaderCell: UITableViewCell {

    @IBOutlet weak var usernameLabel: UILabel!
    static let height: CGFloat = 54
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBAction func optionsButtonTapped(_ sender: UIButton) {
        print("options  button tapped")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

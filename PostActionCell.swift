//
//  PostActionCell.swift
//  Makestagram
//
//  Created by Iman F on 6/28/17.
//  Copyright © 2017 Iman F (group project). All rights reserved.
//

import UIKit

protocol  PostActionCellDelegate: class {
    func didTapLikeButton(_ likeButton: UIButton, on cell: PostActionCell)
}
class PostActionCell: UITableViewCell {
    @IBOutlet weak var timeAgoLabel: UILabel!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    static let height: CGFloat = 46
    weak var delegate: PostActionCellDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBAction func likeButtonTapped(_ sender: UIButton) {
        delegate?.didTapLikeButton(sender, on: self)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

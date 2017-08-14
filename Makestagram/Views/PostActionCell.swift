//
//  PostActionCell.swift
//  Makestagram
//
//  Created by Youssef Elabd on 6/9/17.
//  Copyright © 2017 Youssef Elabd. All rights reserved.
//

import UIKit

protocol PostActionCellDelegate: class {
    func didTapLikeButton(_ likeButton: UIButton, on cell: PostActionCell)
}

class PostActionCell: UITableViewCell {

    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var timeAgoLabel: UILabel!
    
    weak var delegate: PostActionCellDelegate?
    
    static let height: CGFloat = 46
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func likeButtonPressed(_ sender: UIButton) {
        delegate?.didTapLikeButton(sender, on: self)
    }
    
}

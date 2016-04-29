//
//  BookCell.swift
//  book
//
//  Created by stephanie yang on 2016/4/29.
//  Copyright © 2016年 stephanie yang. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {

    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var bookname: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

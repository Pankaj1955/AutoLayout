//
//  SingalTableViewCell.swift
//  AutolayoutDemo
//
//  Created by iosCan on 29/08/18.
//  Copyright © 2018 iosCan. All rights reserved.
//

import UIKit

class SingalTableViewCell: UITableViewCell {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}

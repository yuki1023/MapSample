//
//  ImageCell.swift
//  originalMap
//
//  Created by 佐川駿介 on 2020/10/30.
//

import UIKit

class ImageCell: UITableViewCell {
    @IBOutlet private weak var assetImageView: UIImageView!
    
    var assetImage :UIImage? {
        willSet {
            self.assetImageView.image = newValue
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

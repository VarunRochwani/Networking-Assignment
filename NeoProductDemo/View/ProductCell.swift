//
//  productCell.swift
//  NeoProductDemo
//
//  Created by apple on 28/07/23.
//

import UIKit

class ProductCell: UITableViewCell {
    
    @IBOutlet weak var productImg: UIImageView!
    
    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var producerName: UILabel!
    
    @IBOutlet weak var cost: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

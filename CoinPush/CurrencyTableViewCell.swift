//
//  CurrencyTableViewCell.swift
//  CoinPush
//
//  Created by Bijan Massoumi on 7/12/17.
//  Copyright © 2017 Goods and Services. All rights reserved.
//

import UIKit

class CurrencyTableViewCell: UITableViewCell {
    
    //MARK: Properties
<<<<<<< HEAD
    @IBOutlet weak var coinIcon: UIImage!
=======
    @IBOutlet weak var coinIcon: UIImageView!
>>>>>>> b38c3d4630da25dbc73e9476a069ff0c72d7b26b
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var deltaLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  SampleCell.swift
//  graphQlTest
//
//  Created by Gregory Seunghyun Jin on 2020/01/21.
//  Copyright © 2020 Gregory Seunghyun Jin. All rights reserved.
//

import UIKit

class SampleCell: UITableViewCell {

    @IBOutlet weak var storeNameLabel: UILabel!
    @IBOutlet weak var storeDescriptionLabel: UILabel!
    
    
    var store:TestQuery.Data.Store? {
        didSet {
            
            if let item = store {
                self.storeNameLabel.text = item.storeName
                self.storeDescriptionLabel.text = item.storeDescription
            }
            else {
                self.storeNameLabel.text = ""
                self.storeDescriptionLabel.text = ""
            }
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

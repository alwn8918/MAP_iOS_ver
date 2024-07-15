//
//  ListTableViewCell.swift
//  MobileAppIOSVersion
//
//  Created by 김미주 on 15/07/2024.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    // MARK: - Properties
    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setFont()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setFont() {
        titleLabel.font = UIFont(name: "GmarketSansTTFMedium", size: 17)
        addressLabel.font = UIFont(name: "GmarketSansTTFMedium", size: 15)
        categoryLabel.font = UIFont(name: "GmarketSansTTFMedium", size: 15)
    }
    
}

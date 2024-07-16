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
        titleLabel.font = UIFont(name: "GmarketSansTTFMedium", size: 13)
        addressLabel.font = UIFont(name: "GmarketSansTTFMedium", size: 11)
        categoryLabel.font = UIFont(name: "GmarketSansTTFMedium", size: 10)
    }
    
    func configure(with item: Item) {
        titleLabel.text = item.title
        addressLabel.text = item.addr1
        categoryLabel.text = "\(item.cat1) > \(item.cat2) > \(item.cat3)"
        
        if let urlString = item.firstimage, let url = URL(string: urlString) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data, error == nil else { return }
                DispatchQueue.main.async {
                    self.thumbImageView.image = UIImage(data: data)
                }
            }.resume()
        } else {
            thumbImageView.image = nil
        }
    }
    
}

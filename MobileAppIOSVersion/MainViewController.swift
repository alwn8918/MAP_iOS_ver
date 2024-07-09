//
//  MainViewController.swift
//  MobileAppIOSVersion
//
//  Created by 김미주 on 09/07/2024.
//

import UIKit

class MainViewController: UIViewController {
    // MARK: - Properties
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var whereLabel: UILabel!
    @IBOutlet weak var recentLabel: UILabel!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setFont()
        
        mainView.layer.cornerRadius = 20
    }
    
    // MARK: - Function
    func setFont() {
        whereLabel.font = UIFont(name: "GmarketSansTTFBold", size: 35)
        recentLabel.font = UIFont(name: "GmarketSansTTFMedium", size: 15)
    }
}

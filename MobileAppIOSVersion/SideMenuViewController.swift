//
//  SideMenuViewController.swift
//  MobileAppIOSVersion
//
//  Created by 김미주 on 10/07/2024.
//

import UIKit
import SideMenu

class SideMenuViewController: UIViewController {
    // MARK: - Properties
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userEmailLabel: UILabel!
    
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var myHeartLabel: UILabel!
    @IBOutlet weak var myCommentLabel: UILabel!
    @IBOutlet weak var settingLabel: UILabel!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setFont()
        
        profileView.layer.cornerRadius = 50
        
    }
    
    // MARK: - Function
    func setFont() {
        userNameLabel.font = UIFont(name: "GmarketSansTTFMedium", size: 20)
        userEmailLabel.font = UIFont(name: "GmarketSansTTFMedium", size: 13)
        loginLabel.font = UIFont(name: "GmarketSansTTFMedium", size: 17)
        myHeartLabel.font = UIFont(name: "GmarketSansTTFMedium", size: 17)
        myCommentLabel.font = UIFont(name: "GmarketSansTTFMedium", size: 17)
        settingLabel.font = UIFont(name: "GmarketSansTTFMedium", size: 17)
    }
    
    // MARK: - Action
    @IBAction func loginBtnTapped(_ sender: Any) {
        guard let loginVC = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController else { return }
        loginVC.modalTransitionStyle = .coverVertical
        loginVC.modalPresentationStyle = .fullScreen
        self.present(loginVC, animated: true, completion: nil)
    }
    
}



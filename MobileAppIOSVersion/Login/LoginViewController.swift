//
//  LoginViewController.swift
//  MobileAppIOSVersion
//
//  Created by 김미주 on 10/07/2024.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: - Properties
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var guideLabel: UILabel!
    @IBOutlet weak var signUpLabel: UILabel!
    @IBOutlet weak var emailBtn: UIButton!
    @IBOutlet weak var googleBtn: UIButton!
    @IBOutlet weak var kakaoBtn: UIButton!
    

    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setFont()

        emailBtn.layer.cornerRadius = 5
        googleBtn.layer.cornerRadius = 5
        kakaoBtn.layer.cornerRadius = 5
    }

    // MARK: - Function
    func setFont() {
        titleLabel.font = UIFont(name: "BagelFatOne-Regular", size: 60)
        guideLabel.font = UIFont(name: "GmarketSansTTFMedium", size: 20)
        signUpLabel.font = UIFont(name: "GmarketSansTTFMedium", size: 13)
    }
    
    // MARK: - Action
    @IBAction func backBtnTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    
}

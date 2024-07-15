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
    @IBOutlet weak var searchBtn: UIButton!
    
    @IBOutlet weak var listTableView: UITableView!
    
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setFont()
        
        mainView.layer.cornerRadius = 20
        listTableView.layer.cornerRadius = 20
        
        listTableView.delegate = self
        listTableView.dataSource = self
        
        listTableView.isHidden = true
        let listNib = UINib(nibName: "ListTableViewCell", bundle: nil)
        listTableView.register(listNib, forCellReuseIdentifier: "ListTableViewCell")
    }
    
    // MARK: - Function
    func setFont() {
        whereLabel.font = UIFont(name: "GmarketSansTTFBold", size: 30)
        recentLabel.font = UIFont(name: "GmarketSansTTFMedium", size: 15)
    }
    
    // MARK: - Action
    @IBAction func searchTapped(_ sender: Any) {
        listTableView.isHidden = false
    }
    
}

// MARK: - dataSource, delegate
extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = listTableView.dequeueReusableCell(withIdentifier: "ListTableViewCell", for: indexPath) as? ListTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

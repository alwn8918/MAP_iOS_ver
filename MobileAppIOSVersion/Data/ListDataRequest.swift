//
//  ListDataRequest.swift
//  MobileAppIOSVersion
//
//  Created by 김미주 on 16/07/2024.
//

import Alamofire
import UIKit

class ListDataRequest{
    func getRequestData(_ viewController: MainViewController) {
        let url = "https://apis.data.go.kr/B551011/KorWithService1/areaBasedList1"
        let params: Parameters =  [
            "serviceKey" : "6u8TrayNZB5SJTA16jp8QA+Gxqnfg0+iIQ3p9BpNTvNTJglB+fxHVqibODUo1xV91MI3tJhn6d670Om3L6gGag==",
            "areaCode" : 1,
            "listYN" : "Y",
            "arrange" : "A",
            "MobileOS" : "ETC",
            "MobileApp" : "AppTest",
            "_type" : "json"
        ]
        
        AF.request(url, method: .get, parameters: params, headers: nil)
            .responseDecodable(of: ListData.self) { response in
                switch response.result {
                case .success(let listData):
                    viewController.didSuccess(listData)
                case .failure(let error):
                    print("failure \(String(describing: error))")
                }}
    }
    
}

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let listData = try? JSONDecoder().decode(ListData.self, from: jsonData)

import Foundation

// MARK: - ListData
struct ListData: Codable {
    let response: Response
}

// MARK: - Response
struct Response: Codable {
    let header: Header
    let body: Body
}

// MARK: - Body
struct Body: Codable {
    let items: Items
    let numOfRows, pageNo, totalCount: Int
}

// MARK: - Items
struct Items: Codable {
    let item: [Item]
}

// MARK: - Item
struct Item: Codable {
    let addr1, addr2, areacode, booktour: String
    let cat1, cat2, cat3, contentid: String
    let contenttypeid, createdtime: String
    let firstimage, firstimage2: String?
    let cpyrhtDivCD: CpyrhtDivCD
    let mapx, mapy, mlevel, modifiedtime: String
    let sigungucode, tel, title, zipcode: String

    enum CodingKeys: String, CodingKey {
        case addr1, addr2, areacode, booktour, cat1, cat2, cat3, contentid, contenttypeid, createdtime, firstimage, firstimage2
        case cpyrhtDivCD = "cpyrhtDivCd"
        case mapx, mapy, mlevel, modifiedtime, sigungucode, tel, title, zipcode
    }
}

enum CpyrhtDivCD: String, Codable {
    case empty = ""
    case type3 = "Type3"
}

// MARK: - Header
struct Header: Codable {
    let resultCode, resultMsg: String
}

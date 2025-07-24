//
//  BoxOffice.swift
//  NetworkCommunication
//
//  Created by 전민돌 on 7/24/25.
//

import Foundation

struct BoxOfficeResult: Decodable {
    let boxOfficeResult: DailyBoxOfficeList
}

struct DailyBoxOfficeList: Decodable {
    let boxofficeType: String
    let showRange: String
    let dailyBoxOfficeList: [BoxOffice]
}

struct BoxOffice: Decodable {
    let rank: String
    let movieNm: String
    let openDt: String
}

//
//  NewsModel.swift
//  TabNewsSwift
//
//  Created by Horacio Mota on 09/09/2023.
//

import Foundation

struct newsDataModel: Codable, Identifiable {
    var id: String
    var title: String
    var created_at: String
    var tabcoins: Int
    var owner_username: String
}

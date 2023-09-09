//
//  fetchforContent.swift
//  TabNewsSwift
//
//  Created by Horacio Mota on 09/09/2023.
//

import Foundation

struct postModel: Codable, Identifiable {
    var id: String
    var title: String    
}


func fetchforContent(owner_username: String, slug: String) async throws -> postModel {
    
    let baseURL = "https://www.tabnews.com.br/api/v1/contents"
    let endpoint = "/\(owner_username)/\(slug)"

    
    guard let url = URL(string: baseURL + endpoint) else {
        print("Ops...Check your URL, something went wrong")
        throw URLError(.badURL)
    }
    
    let (data, _) = try await URLSession.shared.data(from: url)
    print("Wait: Fetching data...")
    let urlDataResponse = try JSONDecoder().decode(postModel.self, from: data)
    print("All done: You got: \(urlDataResponse) bytes of data from api")
    return urlDataResponse
    
}

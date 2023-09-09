//
//  fetchNewPosts.swift
//  TabNewsSwift
//
//  Created by Horacio Mota on 09/09/2023.
//

import Foundation

func fetchNewPosts() async throws -> [newsDataModel] {
    
    let baseURL = "https://www.tabnews.com.br/api/v1/contents"

    guard let url = URL(string: baseURL) else {
        print("Ops...Check your URL, something went wrong")
        throw URLError(.badURL)
    }
    
    let (data, _) = try await URLSession.shared.data(from: url)
    print("Wait: Fetching data...")
    let urlDataResponse = try JSONDecoder().decode([newsDataModel].self, from: data)
    print("All done: You got: \(urlDataResponse.count) bytes of data from api")
    return urlDataResponse.self

}

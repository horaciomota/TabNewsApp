//
//  NewsCell.swift
//  TabNewsSwift
//
//  Created by Horacio Mota on 09/09/2023.
//

import SwiftUI

struct NewsCell: View {
    
    @State var ListofNews : [newsDataModel] = []
    
    var body: some View {
    
        NavigationView() {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 12) {
                    ForEach(ListofNews) { new in
                        Text(new.title)
                            .font(.headline)
                            .foregroundColor(.primary)
                        
                        
                        Text("Post criado por \(new.owner_username)")
                            .foregroundColor(.secondary)
                            .font(.footnote)
                    }
        

                }.padding(.horizontal)
            }
            .navigationTitle("News")
            .task {
                do {
                    ListofNews = try await fetchDataFromApi()
                }catch {
                    print("Somethig went wrong: \(error)")
                }
            }
        }
        
    }
}

struct NewsCell_Previews: PreviewProvider {
    static var previews: some View {
        NewsCell()
    }
}

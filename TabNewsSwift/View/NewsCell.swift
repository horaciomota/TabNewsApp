//
//  NewsCell.swift
//  TabNewsSwift
//
//  Created by Horacio Mota on 09/09/2023.
//

import SwiftUI

struct NewsCell: View {
    var body: some View {
    
        NavigationView() {
            ScrollView {
                LazyVStack(alignment: .leading) {
                    Text ("[PITCH] Math-Right: um simples joguinho de cálculo")
                    Text ("12 tabcoins · 6 comentários · andreyTarXz ·")

                }.padding(.horizontal)
            }.navigationTitle("News")
        }
        
    }
}

struct NewsCell_Previews: PreviewProvider {
    static var previews: some View {
        NewsCell()
    }
}

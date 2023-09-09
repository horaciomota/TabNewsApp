//
//  ContentView.swift
//  TabNewsSwift
//
//  Created by Horacio Mota on 09/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ListOfNewsView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

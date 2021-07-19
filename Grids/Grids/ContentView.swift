//
//  ContentView.swift
//  Grids
//
//  Created by ian white on 2021/07/19.
//

import SwiftUI

struct ContentView: View {
    let data = Array(1...1000).map { "Item \($0)" }
    
    let layout = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout, alignment: .center, spacing: 20) {
                ForEach(data, id: \.self) {
                    item in VStack {
                        Capsule()
                            .fill(Color.blue)
                            .frame(height: 50)
                        Text(item)
                            .foregroundColor(.secondary)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

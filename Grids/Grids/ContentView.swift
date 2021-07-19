//
//  ContentView.swift
//  Grids
//
//  Created by ian white on 2021/07/19.
//

import SwiftUI

struct ContentView: View {
    let data = Array(1...14).map { "\($0)주차 운동" }
    
    let layout = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
                ScrollView {
                    LazyVGrid(columns: layout, spacing: 10) {
                        ForEach(data, id: \.self) {
                            item in VStack {
                                Rectangle()
                                    .fill(Color.secondary)
                                    .frame(height: 165)
                                    .cornerRadius(10.0)
                                Text(item)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                .navigationTitle("Level 1")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Grids
//
//  Created by ian white on 2021/07/19.
//

import SwiftUI

struct ContentView: View {
    let data = Array(1...14).map { "\($0)주차" }
    
    let layout = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
                ScrollView {
                    VStack {
                        ScrollView(.horizontal) {
                            LazyHGrid(rows: layout, spacing: 30) {
                                ForEach(data, id: \.self) {
                                    item in HStack {
                                        Text(item)
                                    }
                                }
                            }
                            .frame(height: 50.0)
                        }
                        
                        LazyVGrid(columns: layout, spacing: 10) {
                            ForEach(data, id: \.self) {
                                item in ZStack {
                                    Rectangle()
                                        .fill(Color.secondary)
                                        .frame(height: 165)
                                        .cornerRadius(10.0)
                                    Text("\(item) 운동")
                                        .foregroundColor(.white)
                                }
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                .navigationTitle(Text("레벨 1"))
                .navigationBarTitleDisplayMode(.inline)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

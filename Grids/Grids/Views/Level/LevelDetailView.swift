//
//  LevelDetailView.swift
//  Grids
//
//  Created by ianWhite on 2021/07/20.
//

import SwiftUI

struct LevelDetailView: View {
    let layout: [GridItem] = [GridItem(.flexible())]
    let data: [String] = Array(1...14).map { "\($0)주차" }
    
    var body: some View {
        NavigationView {
					ScrollView {
						VStack {
							WeekMenuHScroll(layout: layout, data: data)
							
							WeekExerciseVScroll(layout: layout, data: data)
						}
						.padding(.horizontal)
					}
					.navigationTitle(Text("레벨 1"))
					.navigationBarTitleDisplayMode(.inline)
			}
    }
}

struct WeekMenuHScroll: View {
    var layout: [GridItem]
    var data: [String]
    
    var body: some View {
        ScrollView(.horizontal) {
					LazyHGrid(rows: layout, spacing: 30) {
						ForEach(data, id: \.self) {
							item in HStack {
								NavigationLink(destination: WeeklyDetailView()) {
									Text(item)
										.foregroundColor(.black)
								}
							}
						}
					}
					.frame(height: 50.0)
        }
    }
}

struct WeekExerciseVScroll: View {
    var layout: [GridItem]
    var data: [String]
    
    var body: some View {
        LazyVGrid(columns: layout, spacing: 10) {
					ForEach(data, id: \.self) {
						item in ZStack {
							NavigationLink(destination: WeeklyDetailView()) {
								Rectangle()
									.fill(Color.secondary)
									.frame(height: 165)
									.cornerRadius(10.0)
							}
							
							Text("\(item) 운동")
								.foregroundColor(.white)
						}
					}
        }
    }
}

struct LevelDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LevelDetailView()
    }
}

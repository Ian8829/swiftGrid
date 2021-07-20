//
//  WeeklyExerciseVScrollView.swift
//  Grids
//
//  Created by ianWhite on 2021/07/20.
//

import SwiftUI

struct WeeklyExerciseVScrollView: View {
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

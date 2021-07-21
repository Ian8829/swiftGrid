//
//  WeeklyExerciseVScrollView.swift
//  Grids
//
//  Created by ianWhite on 2021/07/20.
//

import SwiftUI

struct WeeklyExerciseVScrollView: View {
	@Binding var isActive: Bool
	var layout: [GridItem]
	var data: [String]
	var imgArr: [String]
	
	var body: some View {
		LazyVGrid(columns: layout, spacing: 10) {
			ForEach(imgArr, id: \.self) { imgName in
				NavigationLink(
					destination: WeeklyDetailView(),
					isActive: $isActive
				) {
					Image(imgName)
						.resizable()
						.frame(height: 135)
						.cornerRadius(5.0)
				}
			}
		}
	}
}

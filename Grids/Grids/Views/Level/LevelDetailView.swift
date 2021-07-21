//
//  LevelDetailView.swift
//  Grids
//
//  Created by ianWhite on 2021/07/20.
//

import SwiftUI

struct LevelDetailView: View {
//	TODO: use isActive for back button
	@State private var isActive: Bool = false
	let layout: [GridItem] = [GridItem(.flexible())]
	let data: [String] = Array(1...14).map { "\($0)주차" }
	
	var body: some View {
		ScrollView {
			VStack {
				WeeklyMenuHScrollView(isActive: $isActive, layout: layout, data: data)
				
				WeeklyExerciseVScrollView(isActive: $isActive, layout: layout, data: data)
			}
			.padding(.horizontal)
		}
		.navigationTitle(isActive ? "" : "레벨 1")
		.navigationBarTitleDisplayMode(.inline)
	}
}



struct LevelDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LevelDetailView()
    }
}

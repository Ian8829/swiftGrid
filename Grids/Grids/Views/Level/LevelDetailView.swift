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
							WeeklyMenuHScrollView(layout: layout, data: data)
							
							WeeklyExerciseVScrollView(layout: layout, data: data)
						}
						.padding(.horizontal)
					}
					.navigationBarHidden(true)
					.navigationBarTitleDisplayMode(.inline)
			}
    }
}



struct LevelDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LevelDetailView()
    }
}

//
//  WeeklyMenuHScrollView.swift
//  Grids
//
//  Created by ianWhite on 2021/07/20.
//

import SwiftUI

struct WeeklyMenuHScrollView: View {
	@Binding var isActive: Bool
	var layout: [GridItem]
	var data: [String]
		
	var body: some View {
			ScrollView(.horizontal) {
				LazyHGrid(rows: layout, spacing: 30) {
					ForEach(data, id: \.self) {
						item in HStack {
							NavigationLink(
								destination: WeeklyDetailView(),
								isActive: $isActive
							) {
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


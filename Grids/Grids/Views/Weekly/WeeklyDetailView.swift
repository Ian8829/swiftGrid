//
//  WeeklyDetailView.swift
//  Grids
//
//  Created by ianWhite on 2021/07/20.
//

import SwiftUI

struct WeeklyDetailView: View {
	let data: [String] = ["카드1", "카드2"]
	
	var body: some View {
		VStack {
			Text("처음 하체 운동")
			
			
			ScrollView(.horizontal) {
				LazyHStack {
					ForEach(data, id: \.self) { card in
						ZStack {
							Rectangle()
								.cornerRadius(20.0)
								.shadow(radius: 20)
								.foregroundColor(.gray)

							Text(card)
						}
						.frame(width: 320.0)
					}
				}
			}
			.padding()
		}
		.navigationTitle("처음 하체 운동")
		.navigationBarTitleDisplayMode(.inline)
	}
}

struct WeeklyDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyDetailView()
    }
}

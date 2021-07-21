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
			ScrollView(.horizontal) {
				LazyHStack {
					ForEach(data, id: \.self) { card in
						ZStack {
							Rectangle()
								.cornerRadius(20.0)
								.foregroundColor(.gray)
								.padding(8)
								.shadow(color: .gray, radius: 5)

							Text(card)
						}
						.frame(width: 320)
					}
				}
			}
			.padding(8)
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

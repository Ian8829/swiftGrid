//
//  HomeBottomHScollView.swift
//  Grids
//
//  Created by ian white on 2021/07/21.
//

import SwiftUI

struct HomeBottomHScollView: View {
	let layout: [GridItem]
	
	var body: some View {
		let imgArr: [String] = Array(1...3).map {
			"HomeBottom\($0)"
		}
		
		ScrollView(.horizontal) {
			LazyHGrid(rows: self.layout, spacing: 10) {
				ForEach(imgArr, id: \.self) { img in
					HStack(spacing: 16) {
						Image(img)
							.resizable()
							.frame(width: 84, height: 84)
							.cornerRadius(5.0)
						
						VStack(alignment: .leading) {
							Text("레벨 1")
								.font(.footnote)
							
							Text("2주차 워크아웃 미니짐볼 옆면운동")
								.font(.footnote)
								.padding(.bottom, 4)
							
							Text("처음 하체 운동")
								.font(.caption)
							
							HStack {
								Circle()
									.frame(width: 26, height: 26)
									.foregroundColor(.gray)
								
								Rectangle()
									.frame(width: 70, height: 10)
									.foregroundColor(.gray)
								
								Spacer()
								
								Text("00:02 in left")
									.font(.footnote)
							}
							.frame(width: 200)
						}
					}
				}
			}
		}
	}
}


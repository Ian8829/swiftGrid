//
//  HomeMainCardView.swift
//  Grids
//
//  Created by ianWhite on 2021/07/20.
//

import SwiftUI

struct HomeMainCardView: View {
	@State private var isActive: Bool = false
	
	var body: some View {
		NavigationView {
			VStack(alignment: .leading, spacing: 4.0, content: {
				Text("당신을 위한 단 하나의 운동")
					.font(.title)
					.padding(.bottom, 30)
					.frame(height: 40)
				
				NavigationLink(
					destination: LevelDetailView(),
					isActive: $isActive
				) {
					Rectangle()
						.foregroundColor(.gray)
						.frame(height: 300)
						.cornerRadius(10)
						.padding(.bottom, 10)

				}
				
				Text("레벨1")
					.padding(.bottom, 8)
			
				Text("2주차 코어의 인지를 되살리는 저강도 운동")
			
				Text("처음 하체 운동")
			})
			.navigationBarTitle(isActive ? "" : "Home")
			.navigationBarHidden(true)
			.padding(20)
		}
	}
}

struct HomeMainCardView_Previews: PreviewProvider {
    static var previews: some View {
			VStack {
				HomeMainCardView()
				
				Spacer()
			}
    }
}

//
//  HomeMainCardView.swift
//  Grids
//
//  Created by ianWhite on 2021/07/20.
//

import SwiftUI


struct HomeMainCardView_Previews: PreviewProvider {
	@State static var isActive = false
	
	static var previews: some View {
		VStack {
			HomeMainCardView(isActive: $isActive)
			
			Spacer()
		}
	}
}

struct HomeMainCardView: View {
	@Binding var isActive: Bool
	
	var body: some View {
		VStack(alignment: .leading, spacing: 4.0, content: {
			Text("당신을 위한 단 하나의 운동")
				.font(.title)
				.padding(.bottom, 30)
				.frame(height: 40)
			
			NavigationLink(
				destination: LevelDetailView(),
				isActive: $isActive
			) {
				Image("HomeMain")
					.resizable()
					.frame(height: 300)
					.cornerRadius(10)
					.padding(.bottom, 10)
			}
			
			Text("레벨1")
				.padding(.bottom, 8)
			
			Text("2주차 코어의 인지를 되살리는 저강도 운동")
			
			Text("처음 하체 운동")
		})
		
	}
}

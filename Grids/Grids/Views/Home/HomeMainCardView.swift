//
//  HomeMainCardView.swift
//  Grids
//
//  Created by ianWhite on 2021/07/20.
//

import SwiftUI

struct HomeMainCardView: View {
	@State var navLinkActive = false
	
	var body: some View {
			VStack(alignment: .leading, spacing: 4.0, content: {
					Text("당신을 위한 단 하나의 운동")
						.font(.title)
						.padding(.bottom, 40)
					
					NavigationLink(
						destination: LevelDetailView(),
						isActive: $navLinkActive
					) {
						Rectangle()
							.foregroundColor(.gray)
							.frame(height: 300)
							.cornerRadius(10)
							.padding(.bottom, 20)
							.onTapGesture {
								navLinkActive = true
								print(navLinkActive)
							}
					}
					
					Text("레벨1")
						.padding(.bottom, 10)
					Text("2주차 코어의 인지를 되살리는 저강도 운동")
					Text("처음 하체 운동")
				})
			.padding(20)
	}
}

struct HomeMainCardView_Previews: PreviewProvider {
    static var previews: some View {
        HomeMainCardView()
    }
}

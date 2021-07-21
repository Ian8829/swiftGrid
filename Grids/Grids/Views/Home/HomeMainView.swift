//
//  HomeMainView.swift
//  Grids
//
//  Created by ian white on 2021/07/21.
//

import SwiftUI

struct HomeMainView: View {
	@State private var isActive: Bool = false
	let layout: [GridItem] = [GridItem(.flexible())]
	let data: [String] = ["워크아웃1", "워크아웃2", "워크아웃3"]
	
	var body: some View {
		NavigationView {
			VStack(spacing: 50) {
				HomeMainCardView(isActive: $isActive)
					.navigationBarTitle(isActive ? "" : "Home")
					.navigationBarHidden(true)
					
				
				VStack {
					HStack {
						Text("이번주 잘보내셨나요?")
							.font(.title2)
						
						Spacer()
						
						Text("See All")
							.font(.title3)
							.bold()
					}
					
					
					HomeBottomHScollView(layout: layout, data: data)
				}
			}
			.padding(20)
			
			
		}
		.accentColor(Color.init("NavBackBtn"))
	}
}

struct HomeMainView_Previews: PreviewProvider {
    static var previews: some View {
        HomeMainView()
    }
}


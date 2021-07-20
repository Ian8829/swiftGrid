//
//  ContentView.swift
//  Grids
//
//  Created by ian white on 2021/07/19.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		VStack {
			HomeMainCardView()
			
			Divider()
			
			Spacer()
		}
	}
}

struct HomeMainCardView: View {
	var body: some View {
		VStack(alignment: .leading, spacing: 4, content: {
			Text("당신을 위한 단 하나의 운동")
				.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
				.padding(.bottom, 40)
			
			Rectangle()
				.foregroundColor(.gray)
				.frame(height: 300)
				.cornerRadius(10)
				.padding(.bottom, 20)
			
			Text("레벨1")
				.padding(.bottom, 10)
			
			Text("2주차 코어의 인지를 되살리는 저강도 운동")
			
			Text("처음 하체 운동")
		})
		.padding(20)
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

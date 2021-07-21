//
//  WeeklyCardModalView.swift
//  Grids
//
//  Created by ian white on 2021/07/21.
//

import SwiftUI

struct WeeklyCardModalView: View {
	@Binding var showCardModal: Bool
	
	var body: some View {
		VStack(alignment: .leading, spacing: 10) {
			Button(action: {
				showCardModal = false
			}) {
				Image(systemName: "xmark")
					.foregroundColor(.black)
			}
			
			Image("VideoModal")
				.resizable()
				.frame(height: 210)
			
			Text("처음 하체 운동")
				.font(.title)
			
			Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).")
			
			Spacer()
		}
		.padding()
	}
}

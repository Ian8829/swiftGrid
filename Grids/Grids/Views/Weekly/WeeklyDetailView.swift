//
//  WeeklyDetailView.swift
//  Grids
//
//  Created by ianWhite on 2021/07/20.
//

import SwiftUI

struct WeeklyDetailView: View {
	let cardImgs: [String] = Array(1...3).map { "WeeklyDetail\($0)" }
	@State var showCardModal = false
	
	var body: some View {
		VStack {
			ScrollView(.horizontal) {
				LazyHStack {
					ForEach(cardImgs, id: \.self) { imgName in
						Image(imgName)
							.resizable()
							.frame(width: 320)
							.cornerRadius(20.0)
							.foregroundColor(.gray)
							.padding(8)
							.shadow(color: .gray, radius: 5)
							.onTapGesture {
								showCardModal = true
							}
							.sheet(isPresented: $showCardModal) {
								WeeklyCardModalView(showCardModal: $showCardModal)
									.colorScheme(.light)
							}
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


//
//  WeeklyDetailView.swift
//  Grids
//
//  Created by ianWhite on 2021/07/20.
//

import SwiftUI

struct WeeklyDetailView: View {
	let data: [String] = ["카드1", "카드2"]
	@State var showCardModal = false
	
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
								.foregroundColor(.white)
						}
						.frame(width: 320)
						.onTapGesture {
							showCardModal = true
						}
						.sheet(isPresented: $showCardModal) {
							VStack(alignment: .leading, spacing: 10) {
								Button(action: {
									showCardModal = false
								}) {
									Image(systemName: "xmark")
										.foregroundColor(.black)
								}
								
								Rectangle()
									.frame(height: 210)
								
								Text("처음 하체 운동")
									.font(.title)
								
								Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).")
								
								Spacer()
							}
							.padding()
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

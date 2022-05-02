//
//  FeedView.swift
//  Twitter Clone
//
//  Created by Filip Hercig on 26.04.2022..
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                ForEach(0..<10) { _ in
                    TweetCell()
                        .padding(.horizontal)
                }
            }
            
            Button(action: {}) {
                Image(systemName: "plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
    }
}

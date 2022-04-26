//
//  TweetCell.swift
//  Twitter Clone
//
//  Created by Filip Hercig on 26.04.2022..
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person")
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Elon Musk")
                            .fontWeight(.semibold)
                        Text("@elonmusk")
                        Text("2w")
                    }
                    Text("I prudcude dope products like Tesla, space rockets and hyperloops. And btw, I have a ton of money.")
                }
            }
            
            Divider()
        }
    }
}

struct TweetCell_Previews: PreviewProvider {
    static var previews: some View {
        TweetCell()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
    }
}

//
//  ConversationCell.swift
//  Twitter Clone
//
//  Created by Filip Hercig on 02.05.2022..
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 14) {
                Image("spiderman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 56, height: 56)
                    .clipped()
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Spiderman")
                        .font(.system(size: 18, weight: .semibold))
                    Text("Longer messages text to see what happens when I do this")
                        .font(.system(size: 14))
                }
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                
                Spacer()
            }
            
            Divider()
        }
    }
}

struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
    }
}

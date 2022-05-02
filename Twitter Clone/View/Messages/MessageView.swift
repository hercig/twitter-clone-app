//
//  MessageView.swift
//  Twitter Clone
//
//  Created by Filip Hercig on 02.05.2022..
//

import SwiftUI

struct MessageView: View {
    
    let message: MockMessage
    
    var body: some View {
        HStack {
            if message.isCurrentUser {
                Spacer()
                Text(message.messageText)
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .clipShape(ChatBubble(isFromCurrentUser: true))
                    .padding(.horizontal)
            } else {
                HStack(alignment: .bottom) {
                    Image(message.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipped()
                        .clipShape(Circle())
                    Text(message.messageText)
                        .padding()
                        .background(Color(.systemGray5))
                        .foregroundColor(.black)
                        .clipShape(ChatBubble(isFromCurrentUser: false))
                }
                .padding(.horizontal)
                Spacer()
            }
            
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: MOCK_MESSAGES[0])
    }
}

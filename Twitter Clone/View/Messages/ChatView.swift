//
//  ChatView.swift
//  Twitter Clone
//
//  Created by Filip Hercig on 02.05.2022..
//

import SwiftUI

struct ChatView: View {
    
    @State var messageText: String = ""
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    ForEach(0..<15) { _ in
                        HStack {
                            Spacer()
                            Text("Test message text")
                                .padding()
                                .background(.blue)
                                .foregroundColor(.white)
                                .clipShape(ChatBubble(isFromCurrentUser: true))
                                .padding(.horizontal)
                        }
                    }
                }
            }
            
            MessageInputView(messageText: $messageText)
                .padding()
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}

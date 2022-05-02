//
//  ConversationsView.swift
//  Twitter Clone
//
//  Created by Filip Hercig on 02.05.2022..
//

import SwiftUI

struct ConversationsView: View {
    
    @State var isShowingNewMessageView = false
    @State var startNewChat = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            NavigationLink(destination: ChatView(), isActive: $startNewChat, label: {})
            
            
            ScrollView {
                ForEach(0..<10) { _ in
                    NavigationLink(
                        destination: ChatView(),
                        label: {
                            ConversationCell()
                                .padding()
                        })
                }
            }
            
            Button(action: {
                isShowingNewMessageView = true
            }) {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .sheet(isPresented: $isShowingNewMessageView) {
                NewMessageView(isPresented: $isShowingNewMessageView, startNewChat: $startNewChat)
            }
        }
    }
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
    }
}

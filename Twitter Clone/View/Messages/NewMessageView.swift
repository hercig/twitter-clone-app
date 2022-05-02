//
//  NewMessageView.swift
//  Twitter Clone
//
//  Created by Filip Hercig on 02.05.2022..
//

import SwiftUI

class NewMessageViewModel: ObservableObject {
    
    @Binding var isPresented: Bool
    @Binding var startNewChat: Bool
    
    var searchText = ""
    var buttonPressed = false
    
    init(isPresented: Binding<Bool>, startNewChat: Binding<Bool>) {
        self._isPresented = isPresented
        self._startNewChat = startNewChat
    }
    
    func onNewChatSelect() {
        buttonPressed = true
        isPresented.toggle()
    }
    
    func onDisappear() {
        if buttonPressed {
            startNewChat.toggle()
        }
    }
}

struct NewMessageView: View {
    
    @ObservedObject var viewModel: NewMessageViewModel
    
    var body: some View {
        ScrollView {
            SearchBar(text: $viewModel.searchText)
                .padding()
            
            VStack {
                ForEach(0..<20) { _ in
                    Button(
                        action: {
                            viewModel.onNewChatSelect()
                        }, label: {
                            UserCell()
                        }
                    )
                }
            }.padding(.horizontal)
        }
        .onDisappear {
            viewModel.onDisappear()
        }
    }
}

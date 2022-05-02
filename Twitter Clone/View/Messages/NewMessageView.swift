//
//  NewMessageView.swift
//  Twitter Clone
//
//  Created by Filip Hercig on 02.05.2022..
//

import SwiftUI

struct NewMessageView: View {

    @State var searchText = ""
    @Binding var isPresented: Bool
    @Binding var startNewChat: Bool
    
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)
                .padding()
            
            VStack {
                ForEach(0..<20) { _ in
                    Button(
                        action: {
                            isPresented.toggle()
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.0001) { // Automaticaly poping View
                                startNewChat.toggle()
                            }
                        }, label: {
                            UserCell()
                        }
                    )
                }
            }.padding(.horizontal)
        }
    }
}

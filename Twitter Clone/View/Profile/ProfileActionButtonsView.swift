//
//  ProfileActionButtonsView.swift
//  Twitter Clone
//
//  Created by Filip Hercig on 02.05.2022..
//

import SwiftUI

struct ProfileActionButtonsView: View {
    
    let isCurrentUser: Bool
    
    var body: some View {
        if isCurrentUser {
            Button(action: {}) {
                Text("Edit profile")
                    .frame(width: 360, height: 40)
                    .background(.blue)
                    .foregroundColor(.white)
            }
            .cornerRadius(20)
        } else {
            HStack {
                Button(action: {}) {
                    Text("Follow")
                        .frame(width: 180, height: 40)
                        .background(.blue)
                        .foregroundColor(.white)
                }
                .cornerRadius(20)
                
                Button(action: {}) {
                    Text("Message")
                        .frame(width: 180, height: 40)
                        .background(.purple)
                        .foregroundColor(.white)
                }
                .cornerRadius(20)
            }
        }
    }
}

struct ProfileActionButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButtonsView(isCurrentUser: false)
    }
}

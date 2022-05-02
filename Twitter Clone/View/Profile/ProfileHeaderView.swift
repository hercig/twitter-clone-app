//
//  ProfileHeaderView.swift
//  Twitter Clone
//
//  Created by Filip Hercig on 02.05.2022..
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack {
            Image("batman")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6, x: 0, y: 0)
            
            Text("Bruce Wayne")
                .font(.headline)
                .padding(.top)
            
            Text("@batman")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("This is user bio. Very smart text bla bla bla. Just to see multiline text.")
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .padding(.top, 8)
            
            HStack(spacing: 40) {
                VStack {
                    Text("0")
                    Text("Followers")
                        .foregroundColor(.gray)
                }
                
                VStack {
                    Text("8")
                    Text("Following")
                        .foregroundColor(.gray)
                }
            }
            .padding()
            
            ProfileActionButtonsView(isCurrentUser: true)
                .padding()
            
            Spacer()
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}

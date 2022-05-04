//
//  UserProfileView.swift
//  Twitter Clone
//
//  Created by Filip Hercig on 02.05.2022..
//

import SwiftUI

struct UserProfileView: View {
    
    @State var selectedFilter: TweetFilterOptions = .tweets
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()
                FilterButtonView(selectedOption: $selectedFilter)
            }
            .padding(.top)
            
            .navigationTitle("Batman")
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}

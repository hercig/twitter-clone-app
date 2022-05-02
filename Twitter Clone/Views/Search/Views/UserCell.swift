//
//  UserCell.swift
//  Twitter Clone
//
//  Created by Filip Hercig on 02.05.2022..
//

import SwiftUI

struct UserCell: View {
    var body: some View {
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
                Text("Peter Parker")
                    .font(.system(size: 16))
            }
            
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
    }
}

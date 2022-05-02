//
//  Message.swift
//  Twitter Clone
//
//  Created by Filip Hercig on 02.05.2022..
//

import Foundation

struct MockMessage: Identifiable {
    let id: Int
    let imageName: String
    let messageText: String
    let isCurrentUser: Bool
}

let MOCK_MESSAGES: [MockMessage] = [
    .init(id: 0, imageName: "spiderman", messageText: "Hello, what's up", isCurrentUser: false),
    .init(id: 1, imageName: "batman", messageText: "Not much", isCurrentUser: true),
    .init(id: 2, imageName: "batman", messageText: "You?", isCurrentUser: true),
    .init(id: 3, imageName: "spiderman", messageText: "Hello, what's up", isCurrentUser: false),
    .init(id: 4, imageName: "spiderman", messageText: "Hello, what's up", isCurrentUser: false),
    .init(id: 5, imageName: "batman", messageText: "Not much", isCurrentUser: true),
    .init(id: 6, imageName: "batman", messageText: "You?", isCurrentUser: true),
    .init(id: 7, imageName: "spiderman", messageText: "Hello, what's up", isCurrentUser: false),
    .init(id: 8, imageName: "spiderman", messageText: "Hello, what's up", isCurrentUser: false),
    .init(id: 9, imageName: "batman", messageText: "Not much", isCurrentUser: true),
    .init(id: 10, imageName: "batman", messageText: "You?", isCurrentUser: true),
    .init(id: 11, imageName: "spiderman", messageText: "Hello, what's up", isCurrentUser: false)
]

//
//  Model.swift
//  Insta-Stories
//
//  Created by Ismailov Farrukh on 19/03/24.
//

import Foundation

//Numbers of stories for users
struct StoryBundle: Identifiable, Hashable {
    var id = UUID().uuidString
    var ptofileName: String
    var profileImage: String
    var isSeen: Bool = false
    var stories: [Story]
}

struct Story: Identifiable, Hashable {
    var id = UUID().uuidString
    var imagURL: String
}

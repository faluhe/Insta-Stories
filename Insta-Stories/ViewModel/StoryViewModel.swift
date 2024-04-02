//
//  StoryViewModel.swift
//  Insta-Stories
//
//  Created by Ismailov Farrukh on 19/03/24.
//

import SwiftUI

class StoryViewModel: ObservableObject {
    @Published var stories: [StoryBundle] = [
        StoryBundle(ptofileName: "Canada", profileImage: "canada", stories: [
            Story(imagURL: "calgary1"),
            Story(imagURL: "niagara1"),
        ]),

        StoryBundle(ptofileName: "Mexico", profileImage: "mex1", stories: [
            Story(imagURL: "mex1"),
            Story(imagURL: "mex2")
        ]),

        StoryBundle(ptofileName: "Tajikistan", profileImage: "tjk1", stories: [
            Story(imagURL: "tjk1"),
            Story(imagURL: "tjk2"),
        ]),
        StoryBundle(ptofileName: "China", profileImage: "china", stories: [
            Story(imagURL: "china1"),
        ])
    ]

    @Published var showStory: Bool = false

    //unique stories
    @Published var currentStory: String = ""

    func nextStoryID(currentID: String) -> String? {
            guard let currentIndex = stories.firstIndex(where: { $0.id == currentID }), currentIndex + 1 < stories.count else { return nil }
            return stories[currentIndex + 1].id
        }

        func previousStoryID(currentID: String) -> String? {
            guard let currentIndex = stories.firstIndex(where: { $0.id == currentID }), currentIndex - 1 >= 0 else { return nil }
            return stories[currentIndex - 1].id
        }
}

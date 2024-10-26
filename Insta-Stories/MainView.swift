//
//  MainView.swift
//  Insta-Stories
//
//  Created by Ismailov Farrukh on 01/04/24.
//

import SwiftUI

struct MainView: View {

    @StateObject var viewModel = StoryViewModel()

    var body: some View {

        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                ScrollView(.horizontal, showsIndicators: false) {
                    //showing stories
                    HStack(spacing: 12) {

                        AddStoryBtn()
                        //Stories
                        ForEach($viewModel.stories) { $stories in
                            //ProfleView
                            ProfileView(stories: $stories)
                                .environmentObject(viewModel)
                        }

                    }
                    .padding()
                }
                //Feed
                ForEach($viewModel.stories) { $stories in
                    FeedView(storiesBundle: $stories)
                }
            }
            .navigationTitle("Stories")
        }

        .overlay(
            StoryView()
                .environmentObject(viewModel)
        )
    }
}

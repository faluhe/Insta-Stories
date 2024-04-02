//
//  FeedView.swift
//  Insta-Stories
//
//  Created by Ismailov Farrukh on 01/04/24.
//

import SwiftUI

struct FeedView: View {

    @Binding var storiesBundle: StoryBundle
    @EnvironmentObject var viewModel: StoryViewModel

    var body: some View {
        let screenWidth = UIScreen.main.bounds.width

        VStack(alignment: .leading) {
            TopProfileView(storiesBundle: $storiesBundle, isBtnVisible: false)
                .frame(height: 50)

            Image(storiesBundle.stories.first?.imagURL ?? "1")
                .resizable()
                .frame(width: screenWidth, height: screenWidth)

        }
    }
}

//
//  ProfileView.swift
//  Insta-Stories
//
//  Created by Ismailov Farrukh on 30/03/24.
//

import SwiftUI

struct ProfileView: View {

    @Binding var stories: StoryBundle
    @Environment(\.colorScheme) var scheme
    @EnvironmentObject var viewModel: StoryViewModel

    var body: some View {
        Image(stories.profileImage)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 60, height: 60)
            .clipShape(Circle())
        //progress ring showing only is not seen
            .padding(3)
        //            .background(scheme == .dark ? .black : .white, in: Circle())
        //            .padding(1)
            .background(
                LinearGradient(colors: [.red, .orange, .yellow, .orange], startPoint: .top, endPoint: .bottom)
                    .clipShape(Circle())
                    .opacity(stories.isSeen ? 0 : 1)
            )
            .onTapGesture {
                withAnimation {
                    stories.isSeen = true

                    //saving current stories and togling
                    viewModel.currentStory = stories.id
                    viewModel.showStory = true
                }

            }
    }
}

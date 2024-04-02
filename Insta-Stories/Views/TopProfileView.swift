//
//  TopProfileVIew.swift
//  Insta-Stories
//
//  Created by Ismailov Farrukh on 01/04/24.
//

import SwiftUI

struct TopProfileView: View {

    @Binding var storiesBundle: StoryBundle
    @EnvironmentObject var viewModel: StoryViewModel
    var isBtnVisible: Bool = true

    var body: some View {
        HStack {
            Image(storiesBundle.profileImage)
                .resizable()
                .frame(width: 35, height: 35)
                .clipShape(Circle())

            Text(storiesBundle.ptofileName)
                .fontWeight(.bold)
                .foregroundStyle(isBtnVisible ? .white : Color(UIColor.label))


            Spacer()
            //dismiss button
            if isBtnVisible {
                Button(action: {
                    withAnimation(.easeInOut) {
                        viewModel.showStory = false
                    }
                }, label: {
                    Image(systemName: "xmark")
                        .frame(width: 30, height: 30)
                        .imageScale(.large)
                        .foregroundStyle(.white)
                        .opacity(isBtnVisible ? 1 : 0)
                    
                })
            }

        }
            .padding()
    }
}

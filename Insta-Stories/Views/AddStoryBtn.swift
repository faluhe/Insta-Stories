//
//  AddStoryBtn.swift
//  Insta-Stories
//
//  Created by Ismailov Farrukh on 01/04/24.
//

import SwiftUI

struct AddStoryBtn: View {
    var body: some View {
        Button {

        } label: {
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .overlay(
                    Image(systemName: "plus")
                        .padding(2)
                        .background(.blue, in: Circle())
                        .foregroundStyle(.white)
                        .padding(2)

                        .offset(x:3, y:3)
                    ,alignment: .bottomTrailing
                )
        }
    }
}

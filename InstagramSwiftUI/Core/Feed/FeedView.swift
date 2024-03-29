//
//  FieldView.swift
//  InstagramSwiftUI
//
//  Created by Danik on 09.02.2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack (spacing: 32) {
                    ForEach(Post.MOCK_POSTS) { post in
                        FeedCell(post: post)
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("Instagram_text_logo")
                        .resizable()
                        .frame(width: 100, height: 40)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                        
                }
            }
        }
    }
}

#Preview {
    FeedView()
}

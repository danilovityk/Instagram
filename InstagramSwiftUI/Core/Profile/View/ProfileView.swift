//
//  ProfileView.swift
//  InstagramSwiftUI
//
//  Created by Danik on 05.02.2024.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({$0.user?.username == user.username})
    }
    
    var body: some View {
            ScrollView {
                // header
                ProfileHeaderView(user: user)
                
                // post grid view
                PostGridView(posts: posts)
            }
                .navigationTitle(user.username)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            
                        } label: {
                            Image(systemName: "line.3.horizontal")
                                .foregroundColor(.black)
                        }
                        

                    }
                }
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[1])
}

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
        
                VStack(spacing: 10){
                    // pic and stats
                    HStack{
                        Image(user.profileImageUrl ?? "")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8) {
                            
                            UserStatView(value: 3, title: "Posts")
                            UserStatView(value: 12, title: "Followers")
                            UserStatView(value: 50, title: "Following")
                            
                        }
                    }
                    .padding(.horizontal)
                    
                    // name and bio
                    VStack (alignment: .leading, spacing: 4){
                        
                        if let fullname = user.fullname {
                            Text(fullname)
                                .font(.footnote)
                                .fontWeight(.semibold)
                        }
                        
                        if let bio = user.bio {
                            Text(bio)
                                .font(.footnote)
                        }
                        
                      
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    // action button
                    Button(action: {
                        
                    }, label: {
                        Text("Edit profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1))
                    })
                
                    Divider()
                }
                
                
                //post grid view
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

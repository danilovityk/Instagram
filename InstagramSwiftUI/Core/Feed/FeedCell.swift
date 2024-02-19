//
//  FieldCell.swift
//  InstagramSwiftUI
//
//  Created by Danik on 09.02.2024.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack{
            // Image + username on top of the post
            HStack{
                
                Image("Devon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text("demon")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.leading, 8)
            
            // Post image
            
            Image("Devon")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            // Action buttons
            HStack (spacing: 16){
                Button {
                    print("Post liked")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                        
                }

                Button {
                    print("Comment added")
                } label: {
                    Image(systemName: "message")
                        .imageScale(.large)
                        
                }

                Button {
                    print("Message sent")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                        
                }

                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            
            
            // Likes label
            
            Text("23 Likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 12)
                .padding(.top, 1)
            
            // Caption label
            
            HStack {
                Text("demon ").fontWeight(.semibold) +
                Text("This is some test caption")
            }
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 12)
            .padding(.top, 1)
            
            Text("6h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 12)
                .padding(.top, 1)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    FeedCell()
}

//
//  ProfileImage.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 26.02.2021.
//

import SwiftUI

struct ProfileImage: View {
    
//    var users: User
    
    var body: some View {
            HStack {
       /*
                users.image2
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .frame(width: 70, height: 70)
                    .overlay(Circle().stroke(Color.pink, lineWidth: 2))
                    .shadow(radius: 3) */
                
               Image("muratPicture")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .frame(width: 70, height: 70)
                    .overlay(Circle().stroke(Color.pink, lineWidth: 2))
                    .shadow(radius: 3)
                        
            VStack(alignment: .leading, spacing: 15) {
               /* HStack() {
                Text(users.userName)
                    .font(.title3)
                    
                    
                    Text(users.userSurName)
                        .font(.title3)
                        
                }
                
                Text(users.nickName)
                    .font(.title2)
                    .fontWeight(.light)
                    .padding()
                    */
               Text("Murat Haktanır")
                    .font(.title3)
                            
                Text("@muradi")
                    .font(.title3) 
            }
                            
            Spacer()
                  
        }.padding(.all)
    }
}
struct ProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImage()
    }
}

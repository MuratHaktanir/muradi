//
//  ProfileCircleImage.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 27.02.2021.
//

import SwiftUI

struct ProfileCircleImage: View {
    
    var image2: Image
    
    var body: some View {
   
        image2
        .resizable()
        .clipShape(Circle())
        .aspectRatio(contentMode: .fill)
        .overlay(Circle().stroke(Color.white, lineWidth: 2))
        .shadow(radius: 3)

    }
}

struct ProfileCircleImage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCircleImage(image2: Image("muratPicture"))
    }
}

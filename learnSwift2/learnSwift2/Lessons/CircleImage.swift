//
//  CircleImage.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 26.02.2021.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        
        image
            .resizable()
            //.frame(width: 70, height: 70)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 3)
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("edebiyat"))
    }
}

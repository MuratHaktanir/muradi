//
//  Users.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 27.02.2021.
//

import Foundation
import SwiftUI

struct User: Hashable, Codable, Identifiable {
    var id: Int
    var userName: String
    var userSurName: String
    var nickName: String
    
    var userImageName: String
    var image2: Image {
        Image(userImageName)
    }
    
}

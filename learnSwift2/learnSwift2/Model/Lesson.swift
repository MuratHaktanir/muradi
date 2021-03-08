//
//  Lesson.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 26.02.2021.
//

import Foundation
import SwiftUI

struct Lesson: Hashable, Codable, Identifiable {
        
    var id: Int
    var lessonname: String
    var grade: String
    var subject: String
    var description: String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    enum LessonSegment: String, CaseIterable, Identifiable {
        case overview = "Genel Bilgi"
        case resources = "Kaynakça"

        var id: String { self.rawValue }
    }
}

class Liste: ObservableObject {
    @Published var liste = [Lesson]()
}

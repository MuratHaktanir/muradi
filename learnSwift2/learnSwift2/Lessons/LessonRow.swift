//
//  LessonRow.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 26.02.2021.
//

import SwiftUI

struct LessonRow: View {
    
    var lessons: Lesson
    
    var body: some View {
        HStack {
            lessons.image
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(lessons.lessonname)
                Text(lessons.grade)
            }
            
            Spacer()

        }
    }
}

struct LessonRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LessonRow(lessons: lessons[0])
            LessonRow(lessons: lessons[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

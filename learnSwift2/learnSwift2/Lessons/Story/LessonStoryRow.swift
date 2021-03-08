//
//  LessonStoryRow.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 26.02.2021.
//

import SwiftUI

struct LessonStoryRow: View {
    
    @State var isPresented = false
    
    var lessons: Lesson
    
    var body: some View {
        
        
        Button(action: {self.isPresented.toggle()}, label: {
            
            VStack (alignment: .center, spacing: 5) {
                CircleImage(image: lessons.image)
                    .frame(width: 50, height: 50)
                
                Text(lessons.lessonname)
                    .font(.caption)
                    .fontWeight(.semibold)
            }
        }).sheet(isPresented: $isPresented, content: {
            LessonDetailView.init(lessons: lessons)
        })
    }
}

struct LessonStoryRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LessonStoryRow(lessons: lessons[0])
            LessonStoryRow(lessons: lessons[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }}

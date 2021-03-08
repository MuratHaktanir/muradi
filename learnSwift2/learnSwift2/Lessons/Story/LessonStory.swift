//
//  LessonStory.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 26.02.2021.
//

import SwiftUI

struct LessonStory: View {
    
    
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(lessons) { lessons in
                    LessonStoryRow(lessons: lessons)
                }.padding(.bottom, 10)
                .padding(.top, 10)
            }
        }
    }
}

struct LessonStory_Previews: PreviewProvider {
    static var previews: some View {
        LessonStory()
    }
}

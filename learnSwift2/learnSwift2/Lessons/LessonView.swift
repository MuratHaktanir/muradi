//
//  LessonView.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 26.02.2021.
//

import SwiftUI

struct LessonView: View {

    var body: some View {
        
            
        ListView()
        
        
    }
}

struct LessonView_Previews: PreviewProvider {
    static var previews: some View {
        LessonView()
    }
}

struct ListView: View {
    

    @State private var isPresented = false
    
    var body: some View {
        
    NavigationView {

            ListLessonVC()
                
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            withAnimation {
                                self.isPresented.toggle()
                                
                            }
                        }) {
                            Image(systemName: "plus.circle")
                                .resizable()
                                .frame(width: 23, height: 23)
                                .fullScreenCover(isPresented: $isPresented, content: {
                                    AddLesson.init()
                                    })
                            }
                        }
                }
                .navigationBarTitle("Dersler", displayMode: .automatic)
           
        } // NavigationView end!
        .accentColor(.pink)
    }
}

/*

struct ListLessonView: View {

    var body: some View {
        
            
        List(lessons) { lessons in
            
            NavigationLink(destination: LessonDetailView(lessons: lessons)) {
                
                    LessonRow(lessons: lessons)
                        
                    }
                } // List end.
        
        }
        
    }

 */

struct ListLessonVC: View {
    var body: some View {
        
        List {

            LessonStory()

            ForEach(lessons) { lessons in
                NavigationLink(destination: LessonDetailView(lessons: lessons)) {
                    LessonRow(lessons: lessons)
                    }
                }
        }
        
    }
}

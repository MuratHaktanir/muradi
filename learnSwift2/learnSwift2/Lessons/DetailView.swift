//
//  LessonDetailView.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 26.02.2021.
//

import SwiftUI

struct LessonDetailView: View {
    
    @State private var isPresented = false

    @State var lessons: Lesson
    
//    @State var genelBilgiVeKaynakca = 0
    
    @State private var changePicker = 0
    
 /*   @State var  dataPoints: [[String]] = [
        ["murat", "Serap", "Ece"],
        ["murat", "Serap", "Ece"],
        ["murat", "Serap", "Ece"],
    ] */
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text(lessons.subject)
                        
                        .font(.title2)
                        .fontWeight(.semibold)
                    Spacer()
                }
                
                Spacer()
                Divider()
                
            }.padding()
            
            HStack {
                
                lessons.image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 150)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(6, antialiased: true)
    
                
            }.padding()
            
            Divider()
            
            
            ButtonView()

            
            VStack(alignment: .leading, spacing: 10) {
                
                /*Picker("Genel Bilgi", selection: $genelBilgiVeKaynakca) {
                    ForEach(Lesson.LessonSegment.allCases) { lesson in
                        Text(lesson.rawValue).tag(lesson) */
                
                Picker(selection: $changePicker, label: Text("")) {
                    Text("Genel Bilgi").tag(0)
                    Text("Kaynakça").tag(1)
                
                
            }.padding()
            .pickerStyle(SegmentedPickerStyle())
            .accentColor(.pink)

                if changePicker == 0 {
                    OverView(lessons: lessons)
                        .padding()
                        
                        
                } else {
                    Deneme()
                        
                }
                
            }
            .navigationBarTitle(lessons.lessonname, displayMode: .inline)
            .navigationBarItems(trailing:
                                CircleImage(image: lessons.image)
                                .frame(width: 30, height: 30)
                                )
        }
    }
}

struct LessonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LessonDetailView(lessons: lessons[0])
    }
}
/*
HStack(spacing: 0) {
    CircleImage(image: lessons.image)
        .frame(width: 100, height: 100)
    VStack(alignment: .leading, spacing: 10) {
    
        Text(lessons.lessonname)
            .font(.title2)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
    
        Text(lessons.grade)
            .font(.title3)
            .fontWeight(.semibold)
    }
    
    Spacer()
}.padding()
*/



struct OverView: View {

    
   @State var lessons: Lesson
    
    var body: some View {
        VStack {
            TextEditor(text: $lessons.description)
        }
    }
}


struct Deneme: View {
    var body: some View {
        Text("Deneme")
            .padding()
    }
}

struct ButtonView: View {
    var body: some View {
        
        HStack(spacing: 70) {
        
            Button(action: {}, label: {
                Image(systemName: "circle")
            })
            
            Button(action: {}, label: {
                Image(systemName: "heart")
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "square.and.arrow.up")
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "person.fill.questionmark")
            })
            
        }.padding(.top, 1)
        .accentColor(.pink)
        
    }
}

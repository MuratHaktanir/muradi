//
//  AddLesson.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 26.02.2021.
//

import SwiftUI

struct AddLesson: View {
    var body: some View {
        AddLessonVC()
    }
}

struct AddLesson_Previews: PreviewProvider {
    static var previews: some View {
        AddLesson()
    }
}

struct AddLessonVC: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var isAdding = false
    
    @State  var addTitle = ""
    @State  var addGrade = ""
    @State  var isEditing = false
    
    
    @State var fullText: String = "Sorunu buraya yazabilirsin."

    var body: some View {
        
        NavigationView {
            
            VStack {
             
                Form {
                    Section {
                        TextField("Ders adı", text: $addTitle)
                                                
                        TextField("Seviye / Ör. 9. Sınıf", text: $addGrade)
                    }
                    
                    Section {
                        TextEditor(text: $fullText)
                            .foregroundColor(Color.gray)
                            .font(.custom("HelveticaNeue", size: 13))
                    }
                    
                    Section {
                        
                    }
                }
                
                
                
            }
            .navigationBarTitle("Ders Ekle", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                    Button(action: {self.presentationMode.wrappedValue.dismiss()}, label: {
                        Text("İptal")
                            
                    })
                }
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    Button(action: {
                        withAnimation {
                            isAdding = true
                        }
                    }, label: {
                        Text("Ekle")
                    })
                }
            }

        } // NavigationView finish.
        .accentColor(.pink)

    }
}

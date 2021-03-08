//
//  TextEditing.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 3.03.2021.
//

import SwiftUI

struct TextEditing: View {
    
    @State var isPresented = false
    @State var tapped = false
    
    @State var fullText = "Merhaba"
    @State var emptyText = ""
    @State var savedData = ""
    
    var body: some View {
        
        ZStack {
        TextEditor(text: tapped ? $emptyText : $fullText)
            .foregroundColor(.primary)
            .onTapGesture {
                self.tapped.toggle()
            }.sheet(isPresented: $tapped, content: {
                NewInfoView.init()
            })
            HStack {
        Text(savedData)
            .font(.title3)
            .foregroundColor(.primary)
            }
        }
    }
}


struct TextEditing_Previews: PreviewProvider {
    static var previews: some View {
        TextEditing()
    }
}

//
//  TextEdit.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 3.03.2021.
//

import SwiftUI

struct TextEdit: View {
            
    @State var isPresented = false
    @State var tapped = false

    @State var fullText: String = ""
    @State var emptyText: String = ""
    @State var savedData = ""
    
    @State var rtvrr = ""
                
var body: some View {
                    
        Button(action: {self.tapped.toggle()}, label: {
                        
            ZStack {
                
                TextField("", text: tapped ? $emptyText : $fullText)
                    .padding()
                    .disabled(true)
                    .foregroundColor(.primary)
                    .background(Color.gray)
                    .opacity(0.40)
                    .clipShape(Capsule())
                    .cornerRadius(1)
                    
                    .onTapGesture {
                        self.tapped.toggle()
                    }.sheet(isPresented: $tapped, content: {
                                NewInfoView.init()
                        
                            })
                            
                            HStack {
                                Text(rtvrr)
                                    .font(.title3)
                                    .foregroundColor(.primary)
                                    .padding()
                                    
                                Spacer()
                            } // HStack end.
                            .onAppear(perform: {
                                getText()
                            }) 
                        } // ZStack end.
            .padding()
                        
                    }) // Button end.
                
            } // View end.
    
    func getText() {
//        savedData = UserDefaults.standard.string(forKey: "edit") ?? ""

            guard let rtvrrtype = UserDefaults.standard.value(forKey: "edit") else {return}
            
            self.rtvrr = rtvrrtype as! String
    }
    
    
    }



struct TextEdit_Previews: PreviewProvider {
    static var previews: some View {
        TextEdit()
    }
}

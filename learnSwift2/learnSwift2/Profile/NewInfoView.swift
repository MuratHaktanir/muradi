//
//  NewInfoView.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 2.03.2021.
//

import SwiftUI

struct NewInfoView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    
    @State var typeYourSelf = ""
    @State var rtvrr = ""
    
    @State var editing = false
    
    var body: some View {
        NavigationView {
            
        Form {
            Section {
                TextField("Kendin hakkında bir şeyler yazabilirsin", text: $typeYourSelf)
                    .foregroundColor(.primary)
                }.padding()
            
            
            }.accentColor(.pink) // Form end.
        
        .navigationBarTitle("Yaz Bakalım", displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                
                Button(action: {
                    
                    savingText()
                    self.presentationMode.wrappedValue.dismiss()
                    
                }, label:  {
                    Text("Ekle")
                })
                /*
                    .onAppear {
                        guard let rtvrrtype = UserDefaults.standard.value(forKey: "edit") else{return}
                        
                        self.rtvrr = rtvrrtype as! String
                    } */

                }
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                    Button(action: {self.presentationMode.wrappedValue.dismiss()}, label: {
                        Text("İptal")
                    })
                }
            
            } // toolbar end.
            
        } // NavigationView end.
        .accentColor(.pink)
    }
    
    func savingText() {
        UserDefaults.standard.set(self.typeYourSelf, forKey: "edit")
        self.rtvrr = self.typeYourSelf
            self.typeYourSelf = ""
        
    }
}

struct NewInfoView_Previews: PreviewProvider {
    static var previews: some View {
        NewInfoView()
    }
}

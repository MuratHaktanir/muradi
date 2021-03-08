//
//  Account.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 26.02.2021.
//

import SwiftUI

struct Account: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    VStack {
                            Link(destination: URL(string: "https://www.apple.com")!, label: {
                                HStack {
                                    Text("Uygulama hakkında.")
                                        .font(.body)
                                Spacer()
                                    Image(systemName: "safari") }
                            })
                    }
                }
                
                Section {
                    HStack {
                        Spacer()
                        Button(action: {}, label: {
                            Text("Çıkış Yap")
                                
                        })
                        Spacer()
                    }
                }
                
            } // Form finished.
            
            .navigationBarTitle("Ayarlar", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    Button(action: {self.presentationMode.wrappedValue.dismiss()}, label: {
                        Image(systemName: "xmark.octagon.fill")
                            
                    })
                }
            }
        }.accentColor(.pink)
    }
}

struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account()
    }
}

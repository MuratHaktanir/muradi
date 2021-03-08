//
//  ProfileView.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 3.03.2021.
//

import SwiftUI

struct ProfileView: View {
    @State private var isPresented = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                
            VStack(alignment: .leading, spacing: 0) {
                
                ProfileImage()
                
                TextEdit()
                                
                Spacer()
                
            } // VStack finish
            .padding(.leading, 10)
            .padding(.top)
            
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
              /*  ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                    Text("Kullanıcı Adı").font(.title3)
                        .fontWeight(.semibold)
                    } */
                 
                 ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                     Text("Profilim")
                         .font(.title)
                         .fontWeight(.semibold)
                         
                     }
             
            
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    Button(action: {self.isPresented.toggle()}, label: {
                        Text("Ayarlar")
                            .sheet(isPresented: $isPresented, content: {
                                Account.init()
                            })
                        })
                    }
                }
            }
        } // NavigationView finish.
        .accentColor(.pink)
    }
}


struct Profile2_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}



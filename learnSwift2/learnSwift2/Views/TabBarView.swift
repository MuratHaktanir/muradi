//
//  TabBarView.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 26.02.2021.
//

import SwiftUI

struct TabBarView: View {

    var body: some View {
        TabView {
            LessonView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Dersler")
                    
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
            
            Deneme2()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Kalp")
                }
            
        }.accentColor(.pink)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

/*

.navigationBarItems(trailing:
            Button(action: {
                self.isPresented.toggle()
            }, label: {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 23, height: 23)}))
                .sheet(isPresented: $isPresented, content: {
                    Account.init()
                    })
*/

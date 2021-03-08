//
//  Profile.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 26.02.2021.
//
/*
import SwiftUI

struct Profile: View {
    
    @State private var isPresented = false

    var body: some View {
        
        NavigationView {
            ScrollView {
                
            VStack(alignment: .leading, spacing: 0) {
                
                ProfileImage()
                
                TextEditingView()
                                
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

struct Profile_Previews: PreviewProvider {
    
    static var previews: some View {
        Profile()
    }
}

struct TextEditingView: View {
    
    @State private var isPresented = false
    @State private var tapped = false
        
    @State private var fullText: String = "Bakalım"
    @State private var emptyText: String = ""
    @State var savedData = ""
        
    var body: some View {
            
            Button(action: {self.tapped.toggle()}, label: {
                ZStack {
                    
                TextField("", text: tapped ? $emptyText : $fullText)
                    .foregroundColor(.primary)
                    .onTapGesture {
                        self.tapped.toggle()
                    }
                        .sheet(isPresented: $tapped, content: {
                        NewInfoView.init()
                    })
                    
                    HStack {
                        Text(savedData)
                            .font(.title3)
                            .foregroundColor(.primary)
                            .onAppear(perform: {
                            getData()
                        })
                        Spacer()
                    } // HStack end.
                    
                } // ZStack end.
                
            }) // Button end.
        
    } // View end.
    func getData(){
        savedData = (UserDefaults.standard.string(forKey: "edit")!)
    }
}




/*
struct ProfileVC: View {
    
    @State private var isPresented = false
    
    var body: some View {
        
        NavigationView {
            ScrollView {
            
            VStack(alignment: .leading, spacing: 0) {
                
                ProfileImage(users: users)
                
                TextEditingView().padding()
                                
                Spacer()
                
            } // VStack finish
            .padding(.leading, 10)
            .padding(.top)
            
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
              /*  ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                    Text("Kullanıcı Adı").font(.title3)
                        .fontWeight(.semibold)
                    }
             */
            
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    Button(action: {self.isPresented.toggle()}, label: {
                        Image(systemName: "slider.horizontal.3")
                            .fullScreenCover(isPresented: $isPresented, content: {
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

*/


/*
 
 Button(action: {self.isPresented.toggle()}, label: {
     TextEditor(text: tapped ? $emptyText : $fullText)
         .onTapGesture {
             self.tapped.toggle()
         }
     if tapped == true {
         NewInfoView()
     }
 })
 */
*/

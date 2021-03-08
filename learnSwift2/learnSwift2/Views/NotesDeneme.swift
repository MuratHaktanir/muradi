//
//  NotesDeneme.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 5.03.2021.
//

import SwiftUI

struct TryUser: Codable {
    
    var userName: String = ""
    var lastName: String = ""
}

struct NotesDeneme: View {
    
    @State private var deneme = TryUser(userName: "", lastName: "")
    
    
    @State var savedData = ""
    
    var body: some View {
        
        
        
        VStack(spacing: 50) {
        
        TextField("Buraya adını yaz", text: $deneme.userName).padding()
            
        Button("save user") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(self.savedData) {
                UserDefaults.standard.set(data, forKey: "userdata")
            }
        }
        
            Text(deneme.userName).padding()
                
            Text(savedData)
                .padding()
                .foregroundColor(.blue)
                .background(Color.pink)
                .onAppear(perform: {
                    getText()
                })

               
//            Text("\(UserDefaults.standard.string(forKey: "userdata") ?? deneme.userName)")
                
        }
    }
    
    func getText() {
//       savedData = "\(UserDefaults.standard.string(forKey: "userdata") ?? "" )"
        UserDefaults.standard.string(forKey: "userdata")
    }
    
}

    
struct NotesDeneme_Previews: PreviewProvider {
    static var previews: some View {
        NotesDeneme()
    }
}

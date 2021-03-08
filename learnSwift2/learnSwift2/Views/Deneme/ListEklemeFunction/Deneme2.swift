//
//  Deneme2.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 2.03.2021.
//

import SwiftUI
import Combine

struct Deneme2: View {
    
    @ObservedObject var taskStore = TaskStore()
    
    @State var rtvrr = ""
    
//    var taskStore = TaskStore()
    
    @State var newToDo : String = ""
    
   var searchBar: some View {
        
        
        HStack {
            Spacer()
            TextField("Ekle", text: $newToDo)
                .padding()
                .ignoresSafeArea()
                
            
            Spacer()
            
            Button(action: {
                
                self.addNewToDo()
                
                                
            }, label: {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding()
             
            })
            
        } //HStack end.
    }
    
    func addNewToDo() {
        taskStore.tasks.append(Task(id: String(taskStore.tasks.count + 1), toDoItem: newToDo))
        self.newToDo = ""
        
        UserDefaults.standard.setValue(self.newToDo, forKey: "newtodo")

    }


    
    var body: some View {
//        ScrollView {
            VStack{
                searchBar.padding()
//                AddView().padding()
                Divider()
                
                List {
                    
                    ForEach(self.taskStore.tasks) { task in
                        
                        Text(task.toDoItem)
                            
                    }
                  
                    .onMove(perform: self.move)
                    .onDelete(perform: self.delete)
                    .onAppear(perform: self.getData)
                    .onAppear(perform: self.getText)
                }
                                
            } // VStack ends.
//        } // ScrollView ends.
    } // View ends.
    
    func getText() {
        UserDefaults.standard.string(forKey: "newtodo")
    }
    func getData() {
        guard let rtvrrtype = UserDefaults.standard.value(forKey: "newtodo") else {return}
        
        self.rtvrr = rtvrrtype as! String
    }
    
    func move(from source: IndexSet, to destination : Int) {
        taskStore.tasks.move(fromOffsets: source, toOffset: destination)
    }
    
    func delete(at offsets : IndexSet) {
        taskStore.tasks.remove(atOffsets: offsets)
    }
}


struct Deneme2_Previews: PreviewProvider {
    static var previews: some View {
        Deneme2()
    }
}

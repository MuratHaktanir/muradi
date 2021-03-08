//
//  AddView.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 3.03.2021.
//

import Foundation
import SwiftUI
import Combine

struct AddView: View {
    
    @ObservedObject var taskStore = TaskStore()
//    var taskStore = TaskStore()
    
//    @State var newToDo : String = ""
    @State var rtvrr = ""
    
    var body: some View {
        
        
        HStack {
            Spacer()
            TextField("Ekle", text: $taskStore.newToDo )
                .padding()
                .ignoresSafeArea()
            
            Spacer()
            
            Button(action: {
                self.addNewToDo()
                saving()
                
                
            }, label: {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding()
             
            })
            Spacer()
        } //HStack end.
    }
    
    func addNewToDo() {
        taskStore.tasks.append(Task(id: String(taskStore.tasks.count + 1), toDoItem: taskStore.newToDo))
        self.taskStore.newToDo = ""
        
        
    }
    
    func saving() {
        UserDefaults.standard.set(self.taskStore.newToDo, forKey: "newtodo")
        self.rtvrr = self.taskStore.newToDo
        self.taskStore.newToDo = ""
    }
    
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}


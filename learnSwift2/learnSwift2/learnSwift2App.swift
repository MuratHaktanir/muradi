//
//  learnSwift2App.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 27.02.2021.
//

import SwiftUI

@main
struct learnSwift2App: App {

    @StateObject var taskStore = TaskStore()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(taskStore)
                
        }
    }
}

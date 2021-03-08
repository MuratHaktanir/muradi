//
//  DenemeData.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 2.03.2021.
//

import Foundation
import SwiftUI
import Combine

struct Task: Hashable, Codable, Identifiable {
    var id = String()
    var toDoItem = String()
//   @State var newToDo = String()
    
}


class TaskStore: ObservableObject {
    @Published var tasks = [Task]()
    @Published var newToDo: String = ""
}

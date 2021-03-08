//
//  Note.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 5.03.2021.
//

import SwiftUI


struct Note: Codable, Identifiable {
    var id = UUID()
    
    var name: String
}


class Notes: ObservableObject {
    @Published var notes: [Note] {
    
    didSet {
        // Saves the array 'items' to disc
        do {
            // find the documentDirectory and create an URL for the JSON
//        file
        let filename = getDocumentsDirectory().appendingPathComponent("userData.json")
        let data = try JSONEncoder().encode(self.notes)
        try data.write(to: filename, options: [.atomicWrite])
    } catch {
        print("Unable to save data.")
        }
    }
}

init() {
    // replaces a call to 'getDocumentsDirectory()' methode as it created an initialisation error.
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    // Add the first [0] path to the filename and create 'filename'
    let filename = paths[0].appendingPathComponent("userData.json")
    //print(filename)
    do {
        // Try to read the file (if it exist) and load the data into the array 'manyitem'
        let data = try Data(contentsOf: filename)
        notes = try JSONDecoder().decode([Note].self, from: data)
        // Yes all good then exit
        return
    } catch {
        // Something whent wrong. Initialize by creating an empty array 'manyitems'
        self.notes = []
        print("Unable to load saved data.")
    }
}
// retreives the App's first DocumentDirectory
func getDocumentsDirectory() -> URL {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0]
    }
}

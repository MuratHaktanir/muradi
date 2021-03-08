//
//  LazyGrid.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 4.03.2021.
//

import SwiftUI

struct LazyGrid: View {
    
    var lessons: Lesson
    
    var gridItemLayout = [GridItem(.fixed(80)), GridItem(.fixed(80))]
    
    var body: some View {
        EmptyView()
    }
}

struct LazyGrid_Previews: PreviewProvider {
    static var previews: some View {
        LazyGrid(lessons: lessons[0])
    }
}

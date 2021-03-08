//
//  ParentView.swift
//  learnSwift2
//
//  Created by Murat Haktanır on 4.03.2021.
//

import SwiftUI

typealias OnClickHandler = (() -> Void)

struct ParentView: View {
    
    @State var onClick: OnClickHandler = { }
    
    var body: some View {
        VStack {
            ChildView1(onClick: $onClick)
            
            ChildView2(onClick: $onClick)
        }
    }
    
}

struct ChildView1: View {
    
    @Binding var onClick: OnClickHandler
    
    @State var titleText = "We love closures"
    
    var body: some View {
        Text(titleText).onAppear {
            self.onClick = self.doMagic
        }
    }
    
    private func doMagic() {
        print("We love closures")
        titleText = "But in a platonic way"
    }
}



struct ChildView2: View {
    
    @Binding var onClick: OnClickHandler
    
    var body: some View {
        Button(action: {
            print("We love closures")
        }) {
            Text("Tap me and then just hurt me")
        }
    }
}
struct ParentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}

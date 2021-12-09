//
//  GridView.swift
//  Moonshot
//
//  Created by Peter Molnar on 09/12/2021.
//

import SwiftUI

struct GridView: View {
    
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120)),

    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}

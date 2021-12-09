//
//  ScrollingView.swift
//  Moonshot
//
//  Created by Peter Molnar on 09/12/2021.
//

import SwiftUI

struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    
    init(_ text: String) {
        print("Creating a new CustomText.")
        self.text = text
    }
}

struct ScrollingView: View {
    var body: some View {
        // When using horizonatal scroll, use HStacks
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText("item \($0)")
                        .font(.title)
                }
            }
           // Lazy stacks are always filling up the space.
            //.frame(maxWidth: .infinity)
        }
    }
}

struct ScrollingView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingView()
    }
}

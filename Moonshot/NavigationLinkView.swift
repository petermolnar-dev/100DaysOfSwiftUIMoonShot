//
//  NavigationLinkView.swift
//  Moonshot
//
//  Created by Peter Molnar on 09/12/2021.
//

import SwiftUI

struct NavigationLinkView: View {
    var body: some View {
        NavigationView {
            List(0..<100) { row in
                NavigationLink {
                    Text("Detail \(row)")
                } label: {
                    Text("Row \(row)")
                        .padding()
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

struct NavigationLinkView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkView()
    }
}

//
//  ContentView.swift
//  Moonshot
//
//  Created by Peter Molnar on 09/12/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showGrid = false
    
    var body: some View {
        NavigationView {
            Group {
                if showGrid {
                    MainGridView()
                } else {
                    MainListView()

                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                Button {
                    showGrid.toggle()
                } label: {
                    Group {
                        if showGrid {
                            Image(systemName: "list.dash")
                        } else {
                            Image(systemName: "square.grid.2x2")

                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

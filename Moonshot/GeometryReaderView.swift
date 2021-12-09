//
//  GeometryReaderView.swift
//  Moonshot
//
//  Created by Peter Molnar on 09/12/2021.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        GeometryReader { geo in
            Image("Example")
                 .resizable()
                 .scaledToFit()
                 .frame(width: geo.size.width * 0.8)
            // Align to the middle. This will be consumed by the GeometryReader first.
                 .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}

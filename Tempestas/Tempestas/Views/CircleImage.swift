//
//  CircleImage.swift
//  Tempestas
//
//  Created by shop on 27.11.20.
//

import SwiftUI

struct CircleImage: View {
    var name: String
    
    var body: some View {
        Image(self.name)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(name: "London")
    }
}

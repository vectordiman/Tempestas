//
//  ContentView.swift
//  Tempestas
//
//  Created by shop on 10/30/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                Text("Tempestas").multilineTextAlignment(.leading)
                    .foregroundColor(.blue)
            }
            HStack {
                Text("Software")
                Spacer()
                Text("2020")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

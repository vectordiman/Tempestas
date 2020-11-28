//
//  CityRow.swift
//  Tempestas
//
//  Created by shop on 27.11.20.
//

import SwiftUI

struct CityRow: View {
    
    var cityName: String
    var country: String
    
    var body: some View {
        HStack {
            Image(systemName: "location").resizable().frame(width: 25, height: 25)
            VStack(alignment: .leading) {
                Text(self.cityName)
                Text(self.country).font(.subheadline).foregroundColor(.gray)
            }
            Spacer()
        }
    }
}

struct CityRow_Previews: PreviewProvider {
    static var previews: some View {
        CityRow(cityName: "London", country: "United kingdom")
    }
}

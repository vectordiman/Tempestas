//
//  CityForecast.swift
//  Tempestas
//
//  Created by shop on 28.11.20.
//

import SwiftUI

struct CityForecast: View {
    
    var body: some View {
        VStack {
            Text("Forecast")
                .navigationBarBackButtonHidden(true)
        }
    }
    
}

struct CityForecast_Previews: PreviewProvider {
    static var previews: some View {
        CityForecast()
    }
}

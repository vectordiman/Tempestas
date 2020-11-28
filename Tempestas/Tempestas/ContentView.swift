//
//  ContentView.swift
//  Tempestas
//
//  Created by shop on 24.11.20.
//

import SwiftUI

struct ContentView: View {
    
    @State var isOpen = false
    @State var section = 0
    
    var cityNameList: [String] = ["London", "Madrid", "Minsk", "Moscow", "Rome"]
    var countryList: [String] = ["United Kingdom", "Spain", "Belarus", "Russia", "Italy"]
    
    var model: Model
    
    init(model: Model) {
        self.model = model
    }
    
    var body: some View {
        CityList(cityNameList: self.cityNameList, countryList: self.countryList, current: self.model.city!.current, forecast: self.model.city!.forecast)
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(model: Model())
    }

}

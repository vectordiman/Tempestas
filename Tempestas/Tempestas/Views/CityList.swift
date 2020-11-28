//
//  CityList.swift
//  Tempestas
//
//  Created by shop on 27.11.20.
//

import SwiftUI

struct CityList: View {
    
    var cityNameList: [String]
    var countryList: [String]
    var current: Current
    var forecast: [ForecastDay]
    
    var body: some View {
        NavigationView {
            List(0..<self.cityNameList.count) { index in
                NavigationLink( destination: CityDetail(cityName: self.cityNameList[index], country: countryList[index], current: self.current, forecast: self.forecast)) {                CityRow(cityName: self.cityNameList[index], country: countryList[index])
                }
                .navigationBarTitle("Cities")
            }
        }
    }
}

struct CityList_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CityList(cityNameList: ["London","Minsk"], countryList: ["Usdf","sdvsdvd"], current: Current(), forecast: [ForecastDay()])
    }
}


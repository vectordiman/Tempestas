//
//  DetailsView.swift
//  Tempestas
//
//  Created by shop on 28.11.20.
//

import SwiftUI

struct DetailsView: View {
    
    var cityName: String
    var country: String
    var current: Current
    
    var body: some View {
        List {
            CategoryRow(categoryName: "Description", itemKeys: [self.current.description], itemValues: [""], itemIcon: ["description"], count: 1)
            
            CategoryRow(categoryName: "Humidity", itemKeys: ["Humidity is"], itemValues: [self.current.humidity.description], itemIcon: ["humanity"], count: 1)
            
            CategoryRow(categoryName: "Pressure", itemKeys: ["Pressure is"], itemValues: [self.current.pressure.description], itemIcon: ["pressure"], count: 1)
            
            CategoryRow(categoryName: "Precipitation", itemKeys: ["Precipitation is"], itemValues: [self.current.precipitation.description], itemIcon: ["precipitation"], count: 1)
            
            CategoryRow(categoryName: "Cloudiness", itemKeys: ["Cloudiness is"], itemValues: [self.current.cloud.description], itemIcon: ["cloud"], count: 1)
            
            CategoryRow(categoryName: "Feels like", itemKeys: ["Feels like "], itemValues: [self.current.feelslike.description + " °C"], itemIcon: ["feels"], count: 1)

            CategoryRow(categoryName: "Wind", itemKeys: ["Degree is", "Direction is", "Gustiness is", "Speed is"], itemValues: [self.current.wind.degree.description, self.current.wind.direction.description, self.current.wind.gust.description, self.current.wind.speed.description], itemIcon: ["degree", "direction", "gust", "speed"], count: 4)
        }.offset(x: -30)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(cityName: "London", country: "United kingdom", current: Current())
    }
}

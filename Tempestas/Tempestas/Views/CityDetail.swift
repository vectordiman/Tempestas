//
//  CityDetail.swift
//  Tempestas
//
//  Created by shop on 27.11.20.
//

import SwiftUI

struct CityDetail: View {

    var cityName: String
    var country: String
    var current: Current
    var forecast: [ForecastDay]
    
    var body: some View {
        NavigationView {
            VStack {
                Image("background").resizable().offset(y: -150).padding(.bottom, -150).frame(height: 50)

                CircleImage(name: self.cityName).offset(y: -130).padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(self.cityName)
                                .font(.title)
                            HStack(alignment: .top) {
                                Text(self.country)
                                    .font(.subheadline)
                                Spacer()
                            }
                        }
                            Text(self.current.temperature.description + " °C")
                                .font(.title).frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            HStack {
                                NavigationLink(
                                    destination: CityForecast(),
                                    label: {
                                        HStack {
                                                Text("Forecast")
                                                    .fontWeight(.semibold)
                                            }
//                                            .padding()
                                            .background(Color.white)
                                            .foregroundColor(.black)
                                            .padding(10)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color.black, lineWidth: 2)
                                            )

                                    })
                                    
                            }
                    }
                    
                    DetailsView(cityName: self.cityName, country: self.country, current: self.current)
                    
                }
                .padding()
                Spacer()
            }
        }
    }
}

struct CityDetail_Previews: PreviewProvider {
    static var previews: some View {
        CityDetail(cityName: "London", country: "United kingdom", current: Current(), forecast: [ForecastDay()])
    }
}

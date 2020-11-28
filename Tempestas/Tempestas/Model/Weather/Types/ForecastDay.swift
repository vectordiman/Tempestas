//
//  ForecastDay.swift
//  Tempestas
//
//  Created by shop on 24.11.20.
//

import Foundation

//"forecastday": [
//            {
//                "date": "2020-11-24",
//                "date_epoch": 1606176000,
//                "day": {
//                    "maxtemp_c": 11.1,
//                    "maxtemp_f": 52.0,
//                    "mintemp_c": 4.2,
//                    "mintemp_f": 39.6,
//                    "avgtemp_c": 9.6,
//                    "avgtemp_f": 49.2,
//                    "maxwind_mph": 10.5,
//                    "maxwind_kph": 16.9,
//                    "totalprecip_mm": 0.0,
//                    "totalprecip_in": 0.0,
//                    "avgvis_km": 7.8,
//                    "avgvis_miles": 4.0,
//                    "avghumidity": 86.0,
//                    "daily_will_it_rain": 0,
//                    "daily_chance_of_rain": "0",
//                    "daily_will_it_snow": 0,
//                    "daily_chance_of_snow": "0",
//                    "condition": {
//                        "text": "Overcast",
//                        "icon": "//cdn.weatherapi.com/weather/64x64/day/122.png",
//                        "code": 1009
//                    },

struct ForecastDay {
    var date: String
    var temperatureMax: Double
    var temperatureMin: Double
    var temperatureAvg: Double
    var windMax: Double
    var totalPrecipitation: Double
    var humidityAvg: Double
    var dailyChanceRain: String
    var dailyChanceSnow: String
    var description: String
 
    init(dictionary: Dictionary<String, Any>) {
        self.date = dictionary["date"] as? String ?? ""
        self.temperatureMax = dictionary["maxtemp_c"] as? Double ?? -1.0
        self.temperatureMin = dictionary["mintemp_c"] as? Double ?? -1.0
        self.temperatureAvg = dictionary["avgtemp_c"] as? Double ?? -1.0
        self.windMax = dictionary["maxwind_kph"] as? Double ?? -1.0
        self.totalPrecipitation = dictionary["totalprecip_mm"] as? Double ?? -1.0
        self.humidityAvg = dictionary["avghumidity"] as? Double ?? -1
        self.dailyChanceRain = dictionary["daily_chance_of_rain"] as? String ?? ""
        self.dailyChanceSnow = dictionary["daily_chance_of_snow"] as? String ?? ""
        self.description = (dictionary["condition"] as? Dictionary<String, Any> ?? ["":""])["text"] as? String ?? ""
    }
    
    init() {
        self.date = ""
        self.temperatureMax = -1.0
        self.temperatureMin = -1.0
        self.temperatureAvg = -1.0
        self.windMax = -1.0
        self.totalPrecipitation = -1.0
        self.humidityAvg = -1
        self.dailyChanceRain = ""
        self.dailyChanceSnow = ""
        self.description = ""
    }
}

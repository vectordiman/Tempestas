//
//  Current.swift
//  Tempestas
//
//  Created by shop on 24.11.20.
//

import Foundation

//"current": {
//        "last_updated_epoch": 1606237207,
//        "last_updated": "2020-11-24 17:00",
//        "temp_c": 11.0,
//        "temp_f": 51.8,
//        "is_day": 1,
//        "condition": {
//            "text": "Sunny",
//            "icon": "//cdn.weatherapi.com/weather/64x64/day/113.png",
//            "code": 1000
//        },
//        "wind_mph": 8.1,
//        "wind_kph": 13.0,
//        "wind_degree": 150,
//        "wind_dir": "SSE",
//        "pressure_mb": 1014.0,
//        "pressure_in": 30.4,
//        "precip_mm": 0.0,
//        "precip_in": 0.0,
//        "humidity": 76,
//        "cloud": 0,
//        "feelslike_c": 9.1,
//        "feelslike_f": 48.3,
//        "vis_km": 10.0,
//        "vis_miles": 6.0,
//        "uv": 3.0,
//        "gust_mph": 13.6,
//        "gust_kph": 22.0

struct Current {
    var temperature: Double
    var wind: Wind
    var pressure: Double
    var precipitation: Double
    var humidity: Int
    var cloud: Int
    var feelslike: Double
    var description: String
    
    init(dictionary: Dictionary<String, Any>) {
        
        self.wind = Wind(value: 0)
        self.temperature = dictionary["temp_c"] as? Double ?? -274.0
        self.wind.speed = dictionary["wind_kph"] as? Double ?? -1.0
        self.wind.degree = dictionary["wind_degree"] as? Int ?? -1
        self.wind.direction = dictionary["wind_dir"] as? String ?? ""
        self.wind.gust = dictionary["gust_kph"] as? Double ?? -1.0
        self.pressure = dictionary["pressure_in"] as? Double ?? -1.0
        self.precipitation = dictionary["precip_mm"] as? Double ?? -1.0
        self.humidity = dictionary["humidity"] as? Int ?? -1
        self.cloud = dictionary["cloud"] as? Int ?? -1
        self.feelslike = dictionary["feelslike_c"] as? Double ?? -1.0
        self.description = (dictionary["condition"] as? Dictionary<String, Any> ?? ["":""])["text"] as? String ?? ""
    }
    init() {
        self.wind = Wind(value: 0)
        self.temperature = -274.0
        self.wind.speed = -1.0
        self.wind.degree =  -1
        self.wind.direction = ""
        self.wind.gust = -1.0
        self.pressure = -1.0
        self.precipitation = -1.0
        self.humidity = -1
        self.cloud = -1
        self.feelslike = -1.0
        self.description = ""
    }
}

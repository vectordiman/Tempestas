//
//  Wind.swift
//  Tempestas
//
//  Created by shop on 24.11.20.
//

import Foundation
//"wind_mph": 8.1,
//"wind_kph": 13.0,
//"wind_degree": 150,
//"wind_dir": "SSE",

struct Wind {
    var speed: Double
    var degree: Int
    var gust: Double // порыв ветра
    var direction: String
    
    init(value: Any) {
        self.speed = -1.0
        self.degree = -1
        self.gust = -1.0 // порыв ветра
        self.direction = ""
    }
}

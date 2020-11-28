//
//  Model.swift
//  Tempestas
//
//  Created by shop on 24.11.20.
//

import Foundation

class Model {

    public var city: City?
    private var url: URL?
    
    private var data: Data?
    
    init() {
        self.url = URL(string: "")
    }
    init(city: City, url: URL) {
        self.city = city
        self.url = url
    }
    
    public func getURL() -> URL? {
        return self.url
    }
    
    public func setURL(url: URL) {
        self.url = url
    }
    
    public func loadWeather(city: String, competitionHandler: (()->Void)?) {
        var components = URLComponents()
            components.scheme = "https"
            components.host = "api.weatherapi.com"
            components.path = "/v1/forecast.json"
            components.queryItems = [
                URLQueryItem(name: "key", value: "253ca2363a27418ca5e153750202411"),
                URLQueryItem(name: "q", value: city),
                URLQueryItem(name: "days", value: "5")
            ]
        
        self.setURL(url: components.url!)

        let dataTask = URLSession.shared.dataTask(with: self.url!) { (data, _, _) in
            guard let data = data else {
                print("Error data")
                return
            }
            do {
                self.data = data
            }

            let current = self.parseCurrentWeather()
            if current == nil {
                return
            }
            
            let forecast = self.parseForecastWeather()
            if forecast == nil {
                return
            }
            
            self.city = City(name: city, current: current!, forecast: forecast!)
            competitionHandler?()
        }
        dataTask.resume()
    }

    public func parseCurrentWeather() -> Current? {
        let data = self.data
        if data == nil {
            return nil
        }
        
        let rootDictionaryAny = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments)
        if rootDictionaryAny == nil {
            return nil
        }
        let rootDictionary = rootDictionaryAny as? Dictionary<String, Any>
        if rootDictionary == nil {
            return nil
        }
    
        if let currentDictionary = rootDictionary!["current"] as? Dictionary<String, Any> {
            let current = Current(dictionary: currentDictionary)
            return current
        }
        else {
            return nil
        }
    }
    
    public func parseForecastWeather() -> [ForecastDay]? {
        let data = self.data
        if data == nil {
            return nil
        }
        
        let rootDictionaryAny = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments)
        if rootDictionaryAny == nil {
            return nil
        }
        let rootDictionary = rootDictionaryAny as? Dictionary<String, Any>
        if rootDictionary == nil {
            return nil
        }
    
        let forecastDictionary = rootDictionary!["forecast"] as? Dictionary<String, Any>
        if forecastDictionary == nil {
            return nil
        }
        
        if let forecastArray = forecastDictionary!["forecastday"] as? [Dictionary<String, Any>] {
            var forecast: [ForecastDay] = []
            
            for dict in forecastArray {
                let tempForecastDay = ForecastDay(dictionary: dict)
                forecast.append(tempForecastDay)
            }
            return forecast
        }
        else {
            return nil
        }
    }

}

//
//  URL+Extensions.swift
//  swiftuiweather
//
//  Created by Piotr Suwara on 24/9/20.
//

import Foundation



extension URL {
    static let APIKEY = "0987177daee582b035941f501eda0521"
    
    static func urlForWeather() -> URL? {
        guard let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=houston&appid=\(APIKEY)") else {
            return nil
        }
        
        return url
    }
}

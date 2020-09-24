//
//  WeatherResponse.swift
//  swiftuiweather
//
//  Created by Piotr Suwara on 24/9/20.
//

import Foundation


struct WeatherResponse: Decodable {
    let weather: Weather
}

struct Weather: Decodable {
    let temp: Double
    let humidity: Double
}

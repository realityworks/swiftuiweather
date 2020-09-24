//
//  WeatherViewModel.swift
//  swiftuiweather
//
//  Created by Piotr Suwara on 24/9/20.
//

import Foundation

class WeatherViewModel: ObservableObject {
    
    @Published private var weather: Weather?
    
    var temperature: Double { weather?.temp ?? 0 }
    
    func fetchWeather() {
        WeatherService().getWeather { result in
            switch result {
            case .success(let weather):
                DispatchQueue.main.async {
                    self.weather = weather
                }
            case .failure(let error):
                print ("Error: \(error.localizedDescription)")
            }
            
        }
    }
    
}

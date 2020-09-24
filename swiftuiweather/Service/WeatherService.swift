//
//  WeatherService.swift
//  swiftuiweather
//
//  Created by Piotr Suwara on 24/9/20.
//

import Foundation


enum NetworkError: Error {
    case badUrl
    case noData
    case decodingError
}

class WeatherService {
    func getWeather(completion: @escaping (Result<Weather?, NetworkError>) -> Void) {
        guard let url = URL.urlForWeather() else {
            return completion(.failure(.badUrl))
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }
            
            if let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data) {
                completion(.success(weatherResponse.weather))
            } else {
                completion(.failure(.decodingError))
            }
        }
    }
}

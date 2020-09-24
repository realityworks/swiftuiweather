//
//  ContentView.swift
//  swiftuiweather
//
//  Created by Piotr Suwara on 24/9/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var weatherVM = WeatherViewModel()
    
    var body: some View {
        Text("Temperature : \(self.weatherVM.temperature)")
            .padding()
            .onAppear() {
                weatherVM.fetchWeather()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

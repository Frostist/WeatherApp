//
//  DataModel.swift
//  WeatherApp
//
//  Created by Will Frost on 2022/11/08.
//

import UIKit
import SwiftUI


struct WeatherData: Hashable {
    var id: Int
    var day: String
    var high: Int
    var low: Int
    var icon: String
    var color: Color
}

class DataModel: NSObject {
    static let data: [WeatherData] = [
        WeatherData(id: 1, day: "Monday", high: 35, low: 28, icon: "sun.max.fill", color: .red),
        WeatherData(id: 2, day: "Tuesday", high: 28, low: 24, icon: "sun.max.fill", color: .blue),
        WeatherData(id: 3, day: "Wednesday", high: 35, low: 26, icon: "sun.max.fill", color: .orange),
        WeatherData(id: 4, day: "Thursday", high: 24, low: 20, icon: "cloud.drizzle.fill", color: .gray),
        WeatherData(id: 5, day: "Friday", high: 18, low: 10, icon: "cloud.fog.fill", color: .gray),
        WeatherData(id: 6, day: "Saterday", high: 25, low: 23, icon: "sun.max.fill", color: .orange),
        WeatherData(id: 7, day: "Sunday", high: 36, low: 30, icon: "sun.max.fill", color: .red)
    ]

}

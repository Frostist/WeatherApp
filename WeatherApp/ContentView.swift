//
//  ContentView.swift
//  WeatherApp
//
//  Created by Will Frost on 2022/11/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(DataModel.data, id:  \.self) { object in
                HStack {
                    Image(systemName: object.icon)
                    Text("\(object.high)º C")
                        .foregroundColor(Color.blue)
                    NavigationLink(object.day, destination: DetailView(data: object))
                    
                    
                }
            }
            .navigationTitle("Cape Town")
        }

        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

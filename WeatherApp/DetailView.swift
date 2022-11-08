//
//  DetailView.swift
//  WeatherApp
//
//  Created by Will Frost on 2022/11/08.
//

import SwiftUI

struct DetailView: View {
    
    var data: WeatherData
    
    @State var isPopoverShowing = false
    
    var body: some View {
        VStack {
            Text(data.day)

            
            Button("Show Popover", action: {
                isPopoverShowing = true })
            
            .padding(10)
            .sheet(isPresented: $isPopoverShowing) {
                Text("H  \(data.high)º C")
                Text("L \(data.low)º C")
            }
            }
        }
    }

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(data: DataModel.data[0])
    }
}

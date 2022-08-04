//
//  ContentView.swift
//  Forecast-swiftUI
//
//  Created by Matheus Maignardi on 04/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.gray, Color.black]),              startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Toronto")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 8) {
                    Image(systemName: "cloud.rain.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                
                .padding(.bottom, 40)
                
                HStack(spacing:20) {
                    ExtractedView(dayOfWeek: "Tue", imageName: "cloud.sun.fill", temperature: 74)
                    
                    ExtractedView(dayOfWeek: "Wed", imageName: "sun.max.fill", temperature: 88)
                    
                    ExtractedView(dayOfWeek: "Thu", imageName: "wind.snow", temperature: 55)
                    
                    ExtractedView(dayOfWeek: "Fri", imageName: "snow", temperature: 25)
                    
                    ExtractedView(dayOfWeek: "Sat", imageName: "cloud.rain.fill", temperature: 55)
                }
                
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .foregroundColor(Color.gray)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .medium, design: .default))
                        .cornerRadius(10)
                }
                
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28
                              , weight: .medium))
                .foregroundColor(.white)
        }
    }
}

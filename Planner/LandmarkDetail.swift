//
//  ContentView.swift
//  Planner
//
//  Created by Bryam Soto Ñahui on 7/4/20.
//  Copyright © 2020 Speira. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack (alignment: .leading) {
                Text(landmark.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                HStack {
                    Text(landmark.park)
                        .font(.headline)
                        .fontWeight(.regular)
                    Spacer()
                    Text(landmark.state)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                }
            }.padding()
            Spacer()
        }.navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}

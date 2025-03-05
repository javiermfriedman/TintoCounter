//
//  MapView.swift
//  Tinto Time
//
//  Created by Javier Friedman on 3/5/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 40.4168, longitude: -3.7038), // Madrid Center
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1) // Limits zoom
    )
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $region, showsUserLocation: true)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    MapView()
}

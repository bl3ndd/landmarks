//
//  LandmarkList.swift
//  testik
//
//  Created by Evgeny Varzin on 22.10.2023.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
            
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                
            }.navigationTitle("Landmark")
            
            
        } detail: {
            Text("Select a Landmark")
        }
        
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}

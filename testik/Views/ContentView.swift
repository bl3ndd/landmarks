//
//  ContentView.swift
//  testik
//
//  Created by Evgeny Varzin on 22.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView().environment(ModelData())
}

//
//  SwiftUIView.swift
//  Landmarks
//
//  Created by Evgeny Varzin on 22.10.2023.
//

import SwiftUI

struct CategoryView: View {
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
            }
            .navigationTitle("Featured")
        } detail: {
            Text("sdfsd")
        }
    }
}

#Preview {
    CategoryView().environment(ModelData())
}

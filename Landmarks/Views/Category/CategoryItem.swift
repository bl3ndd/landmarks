//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Evgeny Varzin on 22.10.2023.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .resizable()
                .frame(width: 185, height: 185)
                .cornerRadius(5)
            
            Text(landmark.name).font(.caption)
        }
    }
}

#Preview {
    CategoryItem(landmark: ModelData().landmarks[0])
}

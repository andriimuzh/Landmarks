//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Andrii Muzh on 03.06.2022.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(8)
            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding()
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
    }
}

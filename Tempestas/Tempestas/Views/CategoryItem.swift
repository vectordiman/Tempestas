//
//  CategoryItem.swift
//  Tempestas
//
//  Created by shop on 28.11.20.
//

import SwiftUI

struct CategoryItem: View {
    
    var iconName: String
    var name: String
    var value: String
    
        var body: some View {
            VStack(alignment: .leading) {
                Image(self.iconName)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .cornerRadius(5)
                Text(self.name + " " + self.value)
                    .font(.caption)
            }
            .padding(.leading, 15)
        
}
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(iconName: "location", name: "Degree", value: "23")
    }
}


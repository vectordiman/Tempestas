//
//  CategoryRow.swift
//  Tempestas
//
//  Created by shop on 28.11.20.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName: String
    var itemKeys: [String]
    var itemValues: [String]
    var itemIcon: [String]
    var count: Int
    
    var body: some View {
        VStack(alignment: .leading) {
                    Text(self.categoryName)
                        .font(.headline)
                        .padding(.leading, 15)
                        .padding(.top, 5)
                    
                        
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 0) {
                            ForEach(0..<self.count) { index in
                                CategoryItem(iconName: itemIcon[index], name: itemKeys[index], value: itemValues[index])
                            }
                        }
                    }
                    .frame(height: 50)
                }
            }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(categoryName: "Wind", itemKeys: ["Degree"], itemValues: ["18"], itemIcon: ["location"], count: 1)
    }
}

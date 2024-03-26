//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Shazeen Thowfeek on 25/03/2024.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHGrid(rows: gridLayout,alignment: .center,spacing: columnSpacing,pinnedViews: [] ,content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer:SectionView(rotateClockwise: true) ) {
                    ForEach(categories){ category in
                        CategoryItemView(category: category)
                    }
                }
            })//grid
            .frame(height: 140)
            .padding(.horizontal,15)
            .padding(.vertical,10)
        }//scroll
    }
}

#Preview {
    CategoryGridView()
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}

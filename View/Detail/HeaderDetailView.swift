//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Shazeen Thowfeek on 25/03/2024.
//

import SwiftUI

struct HeaderDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6,content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ??  sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })//vstack
        .foregroundColor(.white)
            
        
    }
}

#Preview {
    HeaderDetailView()
        .environmentObject(Shop())
        .previewLayout(.sizeThatFits)
        .padding()
        .background(Color.gray)
}

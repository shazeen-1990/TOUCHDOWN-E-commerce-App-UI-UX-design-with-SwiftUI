//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Shazeen Thowfeek on 25/03/2024.
//

import SwiftUI

struct TopPartDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 6){
            //price
            VStack(alignment: .leading,spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ??  sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35,anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -75)
            Spacer()
            
            //photo
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        }//hstack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

#Preview {
    TopPartDetailView()
        .environmentObject(Shop())
        .previewLayout(.sizeThatFits)
        .padding()
}

//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Shazeen Thowfeek on 25/03/2024.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop
    
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            
            //navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            //header
            HeaderDetailView()
                .padding(.horizontal)
            
            //detail top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            //detail bottom part
            VStack(alignment: .center, spacing: 0) {
                //rating + sizes
                RatingsSizesDetailView()
                    .padding(.top,-20)
                    .padding(.bottom,10)
                //description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body,design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                    
                }//scroll
                //quantity + favorite
                
                QuantityFavouriteDerailView()
                    .padding(.vertical,10)
                //add to cart
                AddToCartDetailView()
                    .padding(.bottom,20)
            }//vstack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top,-105)
            )
            
        }//vstack
        .zIndex(0)
        .ignoresSafeArea(.all,edges: .all)
        .background(
        Color(
            red: shop.selectedProduct?.red ?? sampleProduct.red,
            green: shop.selectedProduct?.green ??  sampleProduct.green,
            blue: shop.selectedProduct?.blue ??  sampleProduct.blue
        ).ignoresSafeArea(.all,edges: .all)
        )
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
        .previewLayout(.fixed(width: 375, height: 812))
}

//
//  ContentView.swift
//  Touchdown
//
//  Created by Shazeen Thowfeek on 22/03/2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: -properties
    @EnvironmentObject var shop: Shop
    //MARK: -body
    
    var body: some View {
     
            ZStack {
                if shop.showingProduct == false && shop.selectedProduct == nil {
                    VStack(spacing: 0) {
                        NavigationBarView()
                          
                            .padding(.horizontal,15)
                            .padding(.bottom)
                                            .padding(.top,
                                                     UIApplication.shared.windows.first?.safeAreaInsets.top)
                            .background(Color.white)
                            .shadow(color: Color.black.opacity(0.05), radius: 5,x: 0,y: 5)
                        
                        ScrollView(.vertical, showsIndicators: false,content:  {
                            VStack(spacing: 0){
                                FeaturedTabView()
                                    .padding(.vertical,20)
                                    .padding(.horizontal,-20)
                                    .scaledToFit()
                                
                                CategoryGridView()
                                TitleView(title: "Helmets")
                                
                                LazyVGrid(columns: gridLayout,spacing: 15, content: {
                                    ForEach(products){ product in
                                        ProductItemView(product: product)
                                            .onTapGesture {
                                                feedback.impactOccurred()
                                                
                                                withAnimation(.easeOut){
                                                    shop.selectedProduct = product
                                                    shop.showingProduct = true
                                                }
                                            }
                                    }//loop
                                })//grid
                                .padding(15)
                                TitleView(title: "Brands")
                                BrandGridView()
                                
                                FooterView()
                                    .padding(.horizontal)
                            }
                        })
                        
                    }//vstack
                    .background(colorBackground.ignoresSafeArea(.all, edges: .all))
                } else {
                    ProductDetailView()
                }
            }//zstack
            .ignoresSafeArea(.all,edges: .top)
        }
    }


//MARK: -preview

#Preview {
    ContentView()
        .environmentObject(Shop())
}

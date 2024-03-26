//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Shazeen Thowfeek on 25/03/2024.
//

import SwiftUI

struct ProductItemView: View {
    
    let product: Product
    
    
    var body: some View {
        VStack(alignment:.leading,spacing: 6) {
            //photo
            ZStack{
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//zstack
            .background(Color(red:product.red, green: product.green,blue: product.blue))
            .cornerRadius(12)
            
            //name
            Text(product.name)
            font(.title3)
            fontWeight(.black)
            
            //price
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }//vstack
    }
}

#Preview {
    ProductItemView(product: products[0])
        .previewLayout(.fixed(width: 200, height: 300))
        .padding()
        .background(colorBackground)
}

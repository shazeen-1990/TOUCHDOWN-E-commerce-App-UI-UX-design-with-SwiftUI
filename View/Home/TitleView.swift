//
//  TitleView.swift
//  Touchdown
//
//  Created by Shazeen Thowfeek on 25/03/2024.
//

import SwiftUI

struct TitleView: View {
    var title: String
    
    
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }//hastack
        .padding(.horizontal,15)
        .padding(.bottom,10)
    }
}

#Preview {
    TitleView(title: "Helmet")
        .previewLayout(.sizeThatFits)
        .background(colorBackground)
}

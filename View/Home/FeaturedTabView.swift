//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Shazeen Thowfeek on 22/03/2024.
//

import SwiftUI

struct FeaturedTabView: View {
    
    var body: some View {
        
        TabView{
            ForEach(players){ player in
                FeaturedItemView(player: player)
                    .padding(.top,10)
                    .padding(.horizontal,15)
            }
        }//tab
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

#Preview {
    FeaturedTabView()
        //.previewDevice("iPhone 15 Pro")
        .background(Color.gray)
}

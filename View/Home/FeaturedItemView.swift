//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Shazeen Thowfeek on 22/03/2024.
//

import SwiftUI

struct FeaturedItemView: View {
    let player: Player
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            //.frame(width: 200, height: 600)//added
            .cornerRadius(12.0)
        
    }
}

#Preview {
    FeaturedItemView(player: players[0])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}

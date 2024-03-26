//
//  Shop.swift
//  Touchdown
//
//  Created by Shazeen Thowfeek on 25/03/2024.
//

import Foundation

class Shop: ObservableObject{
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}

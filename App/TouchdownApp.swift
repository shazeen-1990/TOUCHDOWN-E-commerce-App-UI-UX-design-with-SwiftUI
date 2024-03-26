//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Shazeen Thowfeek on 22/03/2024.
//

import SwiftUI

@main
struct TouchdownApp: App{
    var body: some Scene{
        WindowGroup{
            ContentView()
                .environmentObject(Shop())
        }
    }
}

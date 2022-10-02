//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Serhan Khan on 25.09.22.
//

import SwiftUI

@main
struct AppetizersApp: App {
    var order = Order()
    var body: some Scene {
        WindowGroup {
            AppetizerTabView()
                .environmentObject(order)
        }
    }
}

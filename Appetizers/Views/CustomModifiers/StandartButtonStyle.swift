//
//  StandartButtonStyle.swift
//  Appetizers
//
//  Created by Serhan Khan on 03.10.22.
//

import Foundation
import SwiftUI


struct StandartButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

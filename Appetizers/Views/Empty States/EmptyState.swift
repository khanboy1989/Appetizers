//
//  Empty State.swift
//  Appetizers
//
//  Created by Serhan Khan on 01.10.22.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

struct Empty_State_Previews: PreviewProvider {
    static var previews: some View {
        EmptyState(imageName: "empty-order", message: "This is our test message.\nI am making it a little long for testing.")
    }
}

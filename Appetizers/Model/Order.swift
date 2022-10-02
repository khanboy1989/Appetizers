//
//  Order.swift
//  Appetizers
//
//  Created by Serhan Khan on 01.10.22.
//

import SwiftUI


final class Order: ObservableObject {
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func deleteItems(at offSets: IndexSet) {
        items.remove(atOffsets: offSets)
    }
    
    
}

//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Serhan Khan on 27.09.22.
//

import Foundation


final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    @Published var isShowingDetail: Bool = false
    @Published var selectedAppetizer: Appetizer?
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers(completed: { [self] result in
            DispatchQueue.main.async {
                self.isLoading = false 
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    switch error {
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                    
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                    
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                    
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }
                }
            }
        })
    }
}

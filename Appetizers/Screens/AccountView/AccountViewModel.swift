//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Serhan Khan on 01.10.22.
//

import SwiftUI


final class AccountViewModel: ObservableObject {
    
    @AppStorage("user") private var userData: Data?
    @Published var user =  User()
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else{
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        return true
    }
    
    func saveChanges() {
        guard isValidForm else { return }
        
        do {
            let data = try JSONEncoder().encode(user)
            self.userData = data
            alertItem = AlertContext.userSavedSuccess
        }catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    
    func retrieveUser() {
        guard let userData = userData else { return }
        do{
            user = try JSONDecoder().decode(User.self, from: userData)
        }catch {
            alertItem = AlertContext.invalidUserData
        }
    }
}

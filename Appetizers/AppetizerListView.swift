//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Serhan Khan on 25.09.22.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                   AppetizerListCell(appetizer: appetizer)
                }
                .navigationTitle("🍟 Appetizers")
            }.navigationViewStyle(StackNavigationViewStyle())
            .onAppear{
                viewModel.getAppetizers()
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
            
        }.alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message ,
                  dismissButton: alertItem.dismissButton)
        }
        
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}


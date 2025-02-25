//
//  ContentView.swift
//  DemoSwiftUI
//
//  Created by ThienDD9 on 23/07/2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel(isLogin: true)
    @State var tabIndex = 0
    var body: some View {
        if viewModel.isLogin {
            TabView(selection: $tabIndex) {
                ListItemView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(0)
                ProfileView(mainVM: viewModel)
                    .tabItem {
                        Image(systemName: "person")
                            .foregroundColor(.green)
                        Text("Profile")
                    }
                    .tag(1)
            }
            .accentColor(.yellow)
        }
        else {
            LoginView(mainViewModel: viewModel)
        }
    }
}

#Preview {
    MainView()
}

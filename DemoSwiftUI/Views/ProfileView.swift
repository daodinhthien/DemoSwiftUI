//
//  ProfileView.swift
//  DemoSwiftUI
//
//  Created by ThienDD9 on 23/07/2024.
//

import SwiftUI

struct ProfileView: View {
    var mainVM: MainViewViewModel
    var body: some View {
        NavigationView(content: {
            VStack {
                CustomButton(bgColor: .green, text: "Logout", textColor: .white) {
                    mainVM.toggleLogin()
                }
                
                NavigationLink("Show profile") {
                    LoginView(mainViewModel: mainVM)
                }
                .padding(30)
            }
            .navigationTitle("Profile")
        })
    }
}

#Preview {
    ProfileView(mainVM: MainViewViewModel(isLogin: false))
}

//
//  LoginView.swift
//  DemoSwiftUI
//
//  Created by ThienDD9 on 23/07/2024.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var mainViewModel: MainViewViewModel
    @ObservedObject var loginViewModel = LoginViewViewModel(name: "thiện")
    var body: some View {
        VStack(content: {
            TextField("Enter your name", text: $loginViewModel.name)
                .padding()
                .font(.largeTitle)
                .foregroundColor(.black)
            Spacer()
            Text(loginViewModel.name)
                .font(.largeTitle)
                .foregroundColor(.blue)
            Toggle(isOn: $mainViewModel.isLogin){
                Text("Login")
                    .font(.largeTitle)
                    .foregroundColor(.red)
            }
            .padding()
            CustomButton(bgColor: .blue, text: "Test", textColor: .white) {
                mainViewModel.toggleLogin()
            }
            .padding(.bottom, 30)
        })
    }
    
}

#Preview {
    LoginView(mainViewModel: MainViewViewModel(isLogin: true))
}

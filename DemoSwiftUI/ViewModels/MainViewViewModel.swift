//
//  MainViewViewModel.swift
//  DemoSwiftUI
//
//  Created by ThienDD9 on 23/07/2024.
//

import Foundation

final class MainViewViewModel: ObservableObject {
    @Published var isLogin: Bool
    
    init(isLogin: Bool) {
        self.isLogin = isLogin
    }
    
    func toggleLogin() {
        isLogin = !isLogin
    }
    
}

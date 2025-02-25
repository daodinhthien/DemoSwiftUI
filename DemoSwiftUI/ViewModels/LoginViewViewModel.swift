//
//  LoginViewViewModel.swift
//  DemoSwiftUI
//
//  Created by ThienDD9 on 23/07/2024.
//

import Foundation

final class LoginViewViewModel: ObservableObject {
    @Published var name: String = "" {
        didSet {
            print("name: \(name)")
        }
    }
    
    init(name: String) {
        self.name = name
    }
}

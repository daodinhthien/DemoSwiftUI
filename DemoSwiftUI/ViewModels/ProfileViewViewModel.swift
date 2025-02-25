//
//  ProfileViewViewModel.swift
//  DemoSwiftUI
//
//  Created by ThienDD9 on 23/07/2024.
//

import Foundation

final class ProfileViewViewModel: ObservableObject {
    @Published var userId: String = ""
    @Published var address: String = ""
    @Published var email: String = ""
    @Published var time: TimeInterval = Date().timeIntervalSince1970
    
    init() {
        
    }
}

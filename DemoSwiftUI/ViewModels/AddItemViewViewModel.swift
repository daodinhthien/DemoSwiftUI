//
//  AddItemViewViewModel.swift
//  DemoSwiftUI
//
//  Created by ThienDD9 on 23/07/2024.
//

import Foundation

final class AddItemViewViewModel: ObservableObject {
    @Published var description: String = ""
    @Published var dueDate = Date()
    init() {
    }
    
    func save() {
        
    }
}

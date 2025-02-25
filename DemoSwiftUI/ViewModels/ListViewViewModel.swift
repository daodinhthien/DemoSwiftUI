//
//  ListViewViewModel.swift
//  DemoSwiftUI
//
//  Created by ThienDD9 on 23/07/2024.
//

import Foundation

final class ListViewViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    @Published var isShowNewItem: Bool = false
    init() {
        setData()
    }
    
    func setData() {
        for index in 1...10 {
            let item = ItemModel(id: UUID().uuidString, description: "Description: \(index)", time: Date().timeIntervalSince1970)
            items.append(item)
        }
    }
}

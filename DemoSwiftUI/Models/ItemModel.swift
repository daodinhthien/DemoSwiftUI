//
//  ItemModel.swift
//  DemoSwiftUI
//
//  Created by ThienDD9 on 23/07/2024.
//

import Foundation

struct ItemModel: Codable, Identifiable {
    var id: String
    var description: String?
    var time: TimeInterval?
}

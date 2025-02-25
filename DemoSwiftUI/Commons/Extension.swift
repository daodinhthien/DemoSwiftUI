//
//  Extension.swift
//  DemoSwiftUI
//
//  Created by ThienDD9 on 23/07/2024.
//

import Foundation

extension Encodable {
    func toDictionary() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else { return [:] }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            
            return json ?? [:]
        }
        catch {
            return [:]
        }
    }
}

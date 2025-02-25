//
//  CustomButton.swift
//  DemoSwiftUI
//
//  Created by ThienDD9 on 23/07/2024.
//

import SwiftUI

struct CustomButton: View {
    
    let bgColor: Color
    let text: String
    let textColor: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(text)
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(textColor)
                .padding(.horizontal, 110)
                .padding(.vertical, 20)
                .background {
                    Rectangle()
                        .foregroundColor(bgColor)
                }
                .cornerRadius(4)
                .padding(.top)
        }
    }
}

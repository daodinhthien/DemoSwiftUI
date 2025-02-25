//
//  AddItemView.swift
//  DemoSwiftUI
//
//  Created by ThienDD9 on 23/07/2024.
//

import SwiftUI

struct AddItemView: View {
    @StateObject var vm = AddItemViewViewModel()
    @ObservedObject var listVM: ListViewViewModel
    @Binding var isShowAddItem: Bool
    var body: some View {
        VStack {
            TextField("Nhập tên", text: $vm.description)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            DatePicker("Chọn ngày", selection: $vm.dueDate)
                .datePickerStyle(GraphicalDatePickerStyle())
            CustomButton(bgColor: .blue, text: "Thêm", textColor: .white) {
                self.isShowAddItem = false
                listVM.addData(item: vm.getSaveModel())
            }
            .padding(.top, 30)
        }
    }
}

#Preview {
    AddItemView(listVM: ListViewViewModel(), isShowAddItem: Binding(get: {
        return true
    }, set: { _ in
        
    }))
}

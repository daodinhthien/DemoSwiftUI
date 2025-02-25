//
//  ListItemView.swift
//  DemoSwiftUI
//
//  Created by ThienDD9 on 23/07/2024.
//

import SwiftUI

struct ListItemView: View {
    @StateObject var vm = ListViewViewModel()
    
    var body: some View {
        NavigationView(content: {
            VStack {
                List(vm.items) { item in
                    VStack(alignment: .leading, spacing: 10.0) {
                        Text(item.id)
                            .font(.headline)
                        Text(item.description ?? "")
                            .font(.system(size: 20, weight: .bold))
                        Divider()
                            .padding(.top, 8)
                    }
//                    .padding(.vertical)
                    .swipeActions {
                        Button("Delete") {
                        }
                        .tint(.red)
                    }
                    .listRowSeparator(.hidden)
                }
                .padding(.top, 20)
                .listStyle(.plain)
                .toolbar(content: {
                    Button {
                        vm.isShowNewItem = true
                    } label: {
                        Image(systemName: "plus")
                            .font(.title)
                    }

                })
                .sheet(isPresented: $vm.isShowNewItem, content: {
                    AddItemView(listVM: vm, isShowAddItem: $vm.isShowNewItem)
                })
            }
            .navigationTitle("List Item")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        
                    } label: {
                        Text("Back")
                    }

                }
            }
        })
    }
}

#Preview {
    ListItemView(vm: ListViewViewModel())
}

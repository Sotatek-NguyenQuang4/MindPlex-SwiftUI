//
//  RulesViewModel.swift
//  MindPlex
//
//  Created by Nguyễn Như Quang on 04/06/2024.
//

import Foundation

class RulesViewModel: ObservableObject {
    @Published var items: [Item] = [
        Item(name: "Sexually explicit or violent media must be marked as sensitive when posting"),
        Item(name: "No racism, sexism, homophobia, transphobia, xenophobia, or casteism"),
        Item(name: "No incitement of violence or promotion of violent ideologies"),
        Item(name: "No harassment, dogpiling or doxxing of other users"),
        Item(name: "Do not share intentionally false or misleading information")
    ]

}

struct Item: Identifiable {
    let id = UUID()
    let name: String
}

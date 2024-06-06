//
//  PrivacyViewModel.swift
//  MindPlex
//
//  Created by Nguyễn Như Quang on 06/06/2024.
//

import Combine

class PrivacyViewModel: ObservableObject {
    @Published var items: [Item] = [
        Item(name: L10n.Scene.Privacy.Policy.ios),
        Item(name: L10n.Scene.Privacy.Policy.server)
    ]

}

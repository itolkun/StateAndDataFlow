//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Айтолкун Анарбекова on 17/12/22.
//

import Foundation

class StorageManager: ObservableObject {
    @Published var showRegisterView: Bool {
        didSet {
            UserDefaults.standard.set(showRegisterView, forKey: "showRegisterView")
        }
    }
    @Published var name: String {
        didSet {
            UserDefaults.standard.set(name, forKey: "name")
        }
    }
    
    init() {
        self.showRegisterView = true
        self.name = ""
    }
}

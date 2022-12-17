//
//  StarterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.12.2022.
//

import SwiftUI

struct StarterView: View {
    
    @EnvironmentObject private var storageManager: StorageManager
    
    var body: some View {
        Group {
            if UserDefaults.standard.bool(forKey: "showRegisterView") {
                RegisterView()
            }
            else {
                ContentView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView().environmentObject(StorageManager())
    }
}

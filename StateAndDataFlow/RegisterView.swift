//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.12.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    
    @EnvironmentObject private var storageManager: StorageManager
    
    var body: some View {
        VStack {
            HStack{
                TextField("Enter your name...", text: $name)
                    .multilineTextAlignment(.center)
                Text("\(name.count)")
                    .foregroundColor(counter())
                    .font(.system(size: 15))
        
            }
            .padding()
            Button(action: registerUser) {
                
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                        
                }
                .disabled(disabledButton())
            }
        }
    }
    private func disabledButton() -> Bool {
        name.count < 3 ? true : false
    }
    private func counter() -> Color {
        name.count < 3 ? .red : .green
    }
    
    private func registerUser() {
        if !name.isEmpty, name.count >= 3 {
            storageManager.name = name
            storageManager.showRegisterView = false
        }
    }
}


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}


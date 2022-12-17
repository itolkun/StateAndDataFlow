//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.12.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var storageManager: StorageManager
    
    var body: some View {
        VStack {
            Text("Hi, \(UserDefaults.standard.string(forKey: "name") ?? "")")
                .font(.largeTitle)
                .padding(.top, 100)
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            
            ButtonView(text: timer.buttonTitle, color: .red, action: timer.startTimer)
            
            Spacer()
            ButtonView(text: "LogOut", color: .blue, action: {storageManager.showRegisterView = true})
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(StorageManager())
    }
}

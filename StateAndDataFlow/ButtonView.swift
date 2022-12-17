//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Айтолкун Анарбекова on 17/12/22.
//

import SwiftUI

struct ButtonView: View {
    var text: String
    var color: Color
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
        Text(text)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
    }
        
        .frame(width: 200, height: 60)
        .background(color)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(text: "LogOut", color: .blue, action: {})
    }
}

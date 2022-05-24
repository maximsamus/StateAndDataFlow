//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Максим Самусь on 24.05.2022.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .buttonAppearance(color)
    }
}

struct ActionButtonViewPreviews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Some Action", color: .red, action: {})
    }
}

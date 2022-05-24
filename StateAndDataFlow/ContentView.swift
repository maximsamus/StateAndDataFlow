//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Максим Самусь on 18.05.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 200)
            Spacer()
            
            VStack {
                Spacer()
                
                ButtonView(title: timer.buttonTitle, color: .red) {
                    timer.startTimer()
                }
                Spacer()
                
                ButtonView(title: "LogOut", color: .blue) {
                    DataManager.shared.clear(userManager: userManager)
                }
            }
        }
    }
}

struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}

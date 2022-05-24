//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Максим Самусь on 18.05.2022.
//

import SwiftUI

@main
struct StateAndDataFlow: App {
    private let user = DataManager.shared.fetchUser()
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager(user: user))
        }
    }
}

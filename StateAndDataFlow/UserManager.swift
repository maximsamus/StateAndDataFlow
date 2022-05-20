//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Максим Самусь 18.05.2022.
//

import Foundation

final class UserManager: ObservableObject {
    @Published var isRegistered = false
    var name = ""
}

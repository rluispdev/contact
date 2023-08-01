//
//  ContactApp.swift
//  Contact
//
//  Created by Rafael Gonzaga on 31/07/23.
//

import SwiftUI

@main
struct ContactApp: App {
    @StateObject private var stateController = StateController()
    
    var body: some Scene {
        WindowGroup {
            DetailView(stateController: stateController)
                .environment(\.colorScheme, .dark)
        }
    }
}

//
//  SwiftUI_exampleApp.swift
//  SwiftUI-example
//
//  Created by patrick kelly on 2/3/21.
//

import SwiftUI

@main
struct SwiftUI_exampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(GlobalState())
        }
    }
}

//
//  SquirtleApp.swift
//  Squirtle
//
//  Created by Łukasz Galiński on 21/01/2023.
//

import SwiftUI

@main
struct SquirtleApp: App {
//    @Environment(\.openWindow) var openWindow
    @State var currentNumber: String = "1"
    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
        
        MenuBarExtra(currentNumber, systemImage: "\(currentNumber).circle") {
            Button("Settings") {
                    print("TODO: Settings open")
                
            }
            Button("Clear storage") {
                 print("TODO: Clear the storage")
            }
            Button("About Squirtle") {
                 print("TODO: Settings open")
            }
            Divider()
            Button("Quit Squirtle"){
                NSApplication.shared.terminate(nil)
            }
        }
    }
}

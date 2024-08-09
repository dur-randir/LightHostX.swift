//
//  LightHostXApp.swift
//  LightHostX
//
//  Created by dur-randir on 09.08.2024.
//

import SwiftUI

@main
struct LightHostX: App {
    var body: some Scene {
        MenuBarExtra {
            Button("Settings") {}
            Button("Settings") {}
            Divider()
            Text("VST")
            Divider()
            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }.keyboardShortcut("q")
        } label: {
            let image: NSImage = {
                    let ratio = $0.size.height / $0.size.width
                    $0.size.height = 18
                    $0.size.width = 18 / ratio
                    return $0
                }(NSImage(named: "AppIcon")!)

                Image(nsImage: image)
                    .renderingMode(.template)
        }
        .menuBarExtraStyle(.menu)
    }
}

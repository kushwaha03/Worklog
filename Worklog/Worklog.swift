//
//  WorklogApp.swift
//  Worklog
//
//  Created by Mobile Programming  on 21/08/23.
//

import SwiftUI
import FamilyControls
import DeviceActivity


@main
struct Worklog: App {
    let center = AuthorizationCenter.shared


    
    var body: some Scene {
        WindowGroup {
            ContentView()
            
            .onAppear {
                Task {
                    do {
                        try await center.requestAuthorization(for: .individual)
                    } catch {
                        print("Failed to enroll Aniyah with error: \(error)")
                    }
                }
            }
        }
    }
}

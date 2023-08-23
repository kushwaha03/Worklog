//
//  ContentView.swift
//  Worklog
//
//  Created by Mobile Programming  on 21/08/23.
//

import SwiftUI
import DeviceActivity
import FamilyControls

struct ContentView: View {
    @State private var context: DeviceActivityReport.Context = .init(rawValue: "Total Activity")

    @State private var filter = DeviceActivityFilter(
        segment: .daily(
            during: Calendar.current.dateInterval(
               of: .day, for: .now
            )!
        ),
        users: .all,
        devices: .init([.iPhone, .iPad])
    )
    
    
    var body: some View {
        ZStack {
            DeviceActivityReport(context, filter: filter)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

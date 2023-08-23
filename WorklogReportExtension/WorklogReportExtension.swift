//
//  WorklogReportExtension.swift
//  WorklogReportExtension
//
//  Created by Mobile Programming  on 21/08/23.
//

import DeviceActivity
import SwiftUI

@main
struct WorklogReportExtension: DeviceActivityReportExtension {
    var body: some DeviceActivityReportScene {
        // Create a report for each DeviceActivityReport.Context that your app supports.
        TotalActivityReport { totalActivity in
            TotalActivityView(totalActivity: totalActivity)
        }
        // Add more reports here...
    }
}

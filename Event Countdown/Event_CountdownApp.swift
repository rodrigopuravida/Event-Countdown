//
//  Event_CountdownApp.swift
//  Event Countdown
//
//  Created by Rodrigo Carballo on 9/17/24.
//

import SwiftUI

@main
struct Event_CountdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(events: [Event(title: "Birthday", date: Date(), textColor: Color.red),
                                         Event(title: "Graduation", date: Date(), textColor: Color.blue),
                                         Event(title: "Wedding", date: Date(), textColor: Color.green)])
        }
    }
}

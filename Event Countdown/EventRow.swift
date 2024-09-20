//
//  EventRow.swift
//  Event Countdown
//
//  Created by Rodrigo Carballo on 9/19/24.
//

import SwiftUI

struct EventRow: View {
    
    var event : Event
    
    var body: some View {
        VStack {
            Text(event.title)
                .font(.headline)
            Text(event.date.formatted(.dateTime))
                .font(.subheadline)
            Text(event.textColor.description)
        }
    }
}

#Preview {
    EventRow(event: Event(title: "Test Event", date: Date(), textColor: Color.blue))
}

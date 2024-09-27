//
//  EventRow.swift
//  Event Countdown
//
//  Created by Rodrigo Carballo on 9/19/24.
//

import SwiftUI

struct EventRow: View {
    
    @Binding var selectedEvent : Event
    
    var body: some View {
        VStack {
            Text(selectedEvent.title)
                .font(.headline)
                .foregroundColor(selectedEvent.textColor)
            Text(selectedEvent.date.formatted(.dateTime))
                .font(.subheadline)
            Text(selectedEvent.textColor.description)
        }
    }
}

#Preview {
    EventRow(selectedEvent: .constant(Event(title: "Test Event", date: Date(), textColor: Color.blue)))
}

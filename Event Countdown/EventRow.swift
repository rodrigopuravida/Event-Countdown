//
//  EventRow.swift
//  Event Countdown
//
//  Created by Rodrigo Carballo on 9/19/24.
//

import SwiftUI

struct EventRow: View {
    
    @Binding var event : Event
    
    var body: some View {
        VStack {
            Text(event.title)
                .font(.headline)
                .foregroundColor(event.textColor)
            Text(event.date.formatted(.dateTime))
                .font(.subheadline)
            Text(event.textColor.description)
        }
    }
}

#Preview {
    EventRow(event: .constant(Event(title: "Test Event", date: Date(), textColor: Color.blue)))
}

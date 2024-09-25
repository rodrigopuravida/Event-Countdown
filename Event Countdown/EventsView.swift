//
//  EventsView.swift
//  Event Countdown
//
//  Created by Rodrigo Carballo on 9/20/24.
//

import SwiftUI

import SwiftUI

struct EventsView: View {
    @State var events: [Event]
    @State var selectedEvent: Event

    var body: some View {
        
        NavigationStack {
            List($events, id: \.self, editActions: .delete) { $event in
                // Used for Type Event
                NavigationLink(value: event) {
                    EventRow(event: $event)
                }
            }
            .navigationTitle("Events")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    // Adding new event with navigation to EventFormView
                    NavigationLink(destination: EventFormView(event: $selectedEvent)) {
                        Image(systemName: "plus")
                    }
                }
            }
            // Handling navigationDestination for type Event
            .navigationDestination(for: Event.self) { event in
                EventFormView(event: Binding.constant(event)) // Binds event to EventFormView
            }
        }
    }
}

#Preview {
    EventsView(events: [Event(title: "Birthday", date: Date(), textColor: Color.red),
                        Event(title: "Graduation", date: Date(), textColor: Color.blue),
                        Event(title: "Wedding", date: Date(), textColor: Color.green)],
               selectedEvent: Event(title: "", date: Date(), textColor: Color.green))
}

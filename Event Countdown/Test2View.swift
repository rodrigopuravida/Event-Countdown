//
//  Test2View.swift
//  Event Countdown
//
//  Created by Rodrigo Carballo on 9/26/24.
//

import SwiftUI

struct Test2View: View {
    @State var events: [Event]
    @State var selectedEvent: Event // Optional state to track the selected event
    
    var body: some View {
        
        NavigationStack {
            // Sorting by date ascending
            List(events.sorted(by: { $0.date < $1.date }), id: \.self) { event in
                // Pass the dynamic binding of the event into NavigationLink and EventRow
                NavigationLink(value: event) {
                    EventRow(selectedEvent: Binding(
                        get: {
                            self.selectedEvent
                        }, set: { newValue in
                            self.selectedEvent = newValue
                        }
                    ))
                }
            }
            .navigationTitle("Events")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    // Adding new event with navigation to EventFormView
                    NavigationLink(destination: EventFormView(selectedEvent: .constant(Event(title: "", date: Date(), textColor: .black)))) {
                        Image(systemName: "plus")
                    }
                }
            }
            // Handling navigationDestination for type Event
            .navigationDestination(for: Event.self) { event in
                // Pass the dynamic binding of the selected event
                EventFormView(selectedEvent: Binding(
                    get: {
                        self.selectedEvent
                    }, set: { newValue in
                        if let index = events.firstIndex(where: { $0.id == event.id }) {
                            events[index] = newValue
                        }
                    }
                ))
            }
        }
    }
}

#Preview {
    Test2View(events: [
        Event(title: "Wedding", date: Date(), textColor: Color.red)
    ], selectedEvent: Event(title: "Wedding", date: Date(), textColor: Color.red))
}

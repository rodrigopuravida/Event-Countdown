//
//  TestView.swift
//  Event Countdown
//
//  Created by Rodrigo Carballo on 9/23/24.
//

import SwiftUI

struct TestView: View {
    @State var events: [Event]
    @State var selectedEvent: Event
    
    var body: some View {
        
        NavigationStack {
            // Sort events before passing them to List
            List(events.sorted(by: { $0.date < $1.date }), id: \.self) { event in
                // Pass the binding of the event into NavigationLink and EventRow
                NavigationLink(value: event) {
                    EventRow(event: Binding.constant(event))
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
    TestView(events: [Event(title: "Birthday", date: Date().addingTimeInterval(86400), textColor: Color.red),
                      Event(title: "Graduation", date: Date(), textColor: Color.blue),
                      Event(title: "Wedding", date: Date().addingTimeInterval(172800), textColor: Color.green)],
             selectedEvent: Event(title: "", date: Date(), textColor: Color.green))
}


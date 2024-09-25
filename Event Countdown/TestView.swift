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
            List($events, id: \.self, editActions: .delete) { $event in
                // Using NavigationLink with tag and selection for programmatic navigation
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
            // Handling navigationDestination for programmatic navigation
            .navigationDestination(for: Event.self) { event in
                EventFormView(event: Binding.constant(event)) // Bind event to EventFormView
            }
        }
    }
}

#Preview {
    TestView(events: [Event(title: "Birthday", date: Date(), textColor: Color.red),
                        Event(title: "Graduation", date: Date(), textColor: Color.blue),
                        Event(title: "Wedding", date: Date(), textColor: Color.green)],
               selectedEvent: Event(title: "", date: Date(), textColor: Color.green))
}

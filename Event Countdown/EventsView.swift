//
//  EventsView.swift
//  Event Countdown
//
//  Created by Rodrigo Carballo on 9/20/24.
//

import SwiftUI

struct EventsView: View {
    @State var events: [Event]
    @State var event: Event
    
    var body: some View {
        
        NavigationStack {
            List($events, id: \.self, editActions: .delete) {
                $event in
                NavigationLink(destination: EventFormView(event: $event)) {
                    EventRow(event: $event)
                }
                
            }
            .navigationTitle("Events")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: EventFormView(event: $event)) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
    
}

#Preview {
    EventsView(events: [Event(title: "Birthday", date: Date(), textColor: Color.red),
                        Event(title: "Graduation", date: Date(), textColor: Color.blue),
                        Event(title: "Wedding", date: Date(), textColor: Color.green)], event: Event(title: "", date: Date(), textColor: Color.green))
}

//
//  EventsView.swift
//  Event Countdown
//
//  Created by Rodrigo Carballo on 9/20/24.
//

import SwiftUI

struct EventsView: View {
    @State var events: [Event]
    
    var body: some View {
        
        NavigationStack {
            List($events, id: \.self, editActions: .delete) {
                $event in
                NavigationLink(value: event) {
                    EventRow(event: $event)
                }
                }
                
        }
    }
}

#Preview {
    EventsView(events: [Event(title: "Birthday", date: Date(), textColor: Color.red),
                         Event(title: "Graduation", date: Date(), textColor: Color.blue),
                         Event(title: "Wedding", date: Date(), textColor: Color.green)])
}

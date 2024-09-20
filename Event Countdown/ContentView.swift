//
//  ContentView.swift
//  Event Countdown
//
//  Created by Rodrigo Carballo on 9/17/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var events: [Event]
    
    var body: some View {
        
        List($events, id: \.self, editActions: .delete) {
            $event in
            EventRow(event: $event)
        }
    }
}

#Preview {
    ContentView(events: [Event(title: "Birthday", date: Date(), textColor: Color.red),
        Event(title: "Graduation", date: Date(), textColor: Color.blue),
        Event(title: "Wedding", date: Date(), textColor: Color.green)])
}

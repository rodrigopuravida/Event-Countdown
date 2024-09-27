//
//  EventFormView.swift
//  Event Countdown
//
//  Created by Rodrigo Carballo on 9/22/24.
//

import SwiftUI

struct EventFormView: View {
    
    //@Binding var event: Event?
    @Binding var selectedEvent : Event
    
    var body: some View {
        Form {
            TextField("Title", text: $selectedEvent.title)
                .textFieldStyle(.roundedBorder)
                .foregroundColor(selectedEvent.textColor)
            DatePicker("Please enter a date", selection: $selectedEvent.date, displayedComponents: .date)
            ColorPicker("Set the text color", selection: $selectedEvent.textColor)
        }
        .navigationTitle("Event Form")
        .toolbar {
            // Checkbox button to add the event to the array
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    //events.append(event)  // Adding event to the array
                }) {
                    Image(systemName: "checkmark.diamond")
                }
            }
        }
    }
}

#Preview {
    EventFormView(selectedEvent: .constant(Event(title: "", date: Date(), textColor: Color.blue)))
}

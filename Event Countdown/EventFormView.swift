//
//  EventFormView.swift
//  Event Countdown
//
//  Created by Rodrigo Carballo on 9/22/24.
//

import SwiftUI

struct EventFormView: View {
    
    //@Binding var event: Event?
    @Binding var event : Event
    
    var body: some View {
        Form {
            TextField("Title", text: $event.title)
                .textFieldStyle(.roundedBorder)
            DatePicker("Please enter a date", selection: $event.date, displayedComponents: .date)
            ColorPicker("Set the text color", selection: $event.textColor)

        }
    }
}

#Preview {
    EventFormView(event: .constant(Event(title: "", date: Date(), textColor: Color.blue)))
}

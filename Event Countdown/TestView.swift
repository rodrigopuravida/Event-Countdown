//
//  TestView.swift
//  Event Countdown
//
//  Created by Rodrigo Carballo on 9/23/24.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        NavigationStack {
            Text("Home View")
                .navigationTitle("Main View")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: NewView()) {
                            Image(systemName: "plus")
                        }
                    }
                }
        }
    }
}

struct NewView: View {
    var body: some View {
        Text("This is the new view")
            .navigationTitle("New View")
    }
}

#Preview {
    TestView()
}


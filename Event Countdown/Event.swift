//
//  Event.swift
//  Event Countdown
//
//  Created by Rodrigo Carballo on 9/18/24.
//

import Foundation
import SwiftUI

struct Event : Identifiable, Comparable{
    
    var id: UUID = .init()
    var title: String
    var date: Date
    var textColor: Color
    
    // compares Events based on date
        static func < (lhs: Event, rhs: Event) -> Bool {
            return lhs.date < rhs.date
        }

}

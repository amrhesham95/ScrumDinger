//
//  DailyScrum.swift
//  ScrumDinger
//
//  Created by Amr Hesham on 05/06/2021.
//

import SwiftUI

// MARK: - DailyScrum
//
struct DailyScrum {
  var title: String
  var attendees: [String]
  var lengthInMinutes: Int
  var color: Color
}

extension DailyScrum {
  static var data: [DailyScrum] {
    [
      DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, color: .pink),
      DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5, color: .blue),
      DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 1, color: .red)
    ]
  }
}

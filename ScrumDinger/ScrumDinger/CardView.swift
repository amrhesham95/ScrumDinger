//
//  CardView.swift
//  ScrumDinger
//
//  Created by Amr Hesham on 05/06/2021.
//

import SwiftUI

// MARK: - CardView
//
struct CardView: View {
  let scrum: DailyScrum
  var body: some View {
    VStack(alignment: .leading) {
      Text(scrum.title)
        .font(.headline)
      HStack {
        Label("\(scrum.attendees.count)", systemImage: "person.3")
        Spacer()
        Label("\(scrum.lengthInMinutes)", systemImage: "clock")
          .padding(.trailing, 20)
      }
      .font(.caption)
    }.padding()
    .foregroundColor(.white)
  }
}

// MARK: - CardView_Previews
//
struct CardView_Previews: PreviewProvider {
  static var scrum = DailyScrum.data[0]
  static var previews: some View {
    CardView(scrum: scrum)
      .background(scrum.color)
      .previewLayout(.fixed(width: 400, height: 60))
  }
}

//
//  ScrumsView.swift
//  ScrumDinger
//
//  Created by Amr Hesham on 06/06/2021.
//

import SwiftUI

// MARK: - ScrumsView
//
struct ScrumsView: View {
  let scrums: [DailyScrum]
  var body: some View {
    List {
      ForEach(scrums) { scrum in
        NavigationLink(
          destination: Text(scrum.title)) {
          CardView(scrum: scrum)
          }
        .listRowBackground(scrum.color)
      }
    }
    .navigationTitle("Daily Scrums")
    .navigationBarItems(trailing: Button(action: {}) {
      Image(systemName: "plus")
    })
  }
}

// MARK: - ScrumtsView_Preview
//
struct ScrumtsView_Preview: PreviewProvider {
  static var previews: some View {
    NavigationView {
      ScrumsView(scrums: DailyScrum.data)
    }
  }
}

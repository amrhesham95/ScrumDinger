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
      ForEach(scrums) {
        CardView(scrum: $0)
          .listRowBackground($0.color)
      }
    }
  }
}

// MARK: - ScrumtsView_Preview
//
struct ScrumtsView_Preview: PreviewProvider {
  static var previews: some View {
    ScrumsView(scrums: DailyScrum.data)
  }
}

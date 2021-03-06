//
//  DetailView.swift
//  ScrumDinger
//
//  Created by Amr Hesham on 07/06/2021.
//

import SwiftUI

// MARK: - DetailView
//
struct DetailView: View {
  let scrum: DailyScrum
  
  var body: some View {
    List {
      Section(header: Text("Meeting Info")){
        NavigationLink(destination: MeetingView()) {
        Label("Start Meeting", systemImage: "timer")
          .font(.headline)
          .foregroundColor(.accentColor)
        }
        HStack {
          Label("Length", systemImage: "clock")
          Spacer()
          Text("\(scrum.lengthInMinutes) minutes")
        }
        HStack {
          Label("Color", systemImage: "paintpalette")
          Spacer()
          Image(systemName: "checkmark.circle.fill")
            .foregroundColor(scrum.color)
          
        }
      }
      
      Section(header: Text("Attendees")) {
          ForEach(scrum.attendees, id: \.self) { attendee in
            return Label(attendee, systemImage: "person")
          }
      }
    }
    .listStyle(InsetGroupedListStyle())
    .navigationTitle(scrum.title)
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      DetailView(scrum: DailyScrum.data[0])
    }
  }
}

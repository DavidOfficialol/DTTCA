//
//  HomeView.swift
//  DTTCA
//
//  Created by Dツvid Official on 3/9/2026.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            NavigationStack {
                List {
                    NavigationLink(destination: UncompletedListView()) {
                        Image(systemName: "checklist.unchecked")
                        Text("Uncompleted Lists")
                    }
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        HStack {
                            Image(systemName: "scroll")
                            Text("Completed Lists")
                        }
                    }
                    NavigationLink(destination: SettingsView()) {
                        HStack {
                            Image(systemName: "gearshape.fill")
                            Text("Settings")
                        }
                    }
                    Section(header: Text("Quick Actions")) {
                        
                    }
                }
            }        }
        .padding()
    }
}

#Preview {
    HomeView()
}

struct SetLisV: View {
    var image: String
    var name: String
    var body: some View {
        Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
            HStack {
                Image(systemName: image)
                Text(name)
            }
        }
    }
}

struct SettingsView: View {
    var body: some View {
        List {
            SetLisV(image: "gearshape.fill", name: "Settings")
        }
    }
}

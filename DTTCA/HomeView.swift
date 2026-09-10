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
                        Label("Uncompleted Lists", systemImage: "checklist.unchecked")
                    }
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        HStack {
                            Label("Completed", systemImage: "scroll")
                        }
                    }
                    NavigationLink(destination: SettingsView()) {
                        HStack {
                            Label("Settings", systemImage: "gearshape.fill")
                        }
                    }
                    Section(header: Text("Quick Actions")) {
                        
                    }
                }
            }
        }
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

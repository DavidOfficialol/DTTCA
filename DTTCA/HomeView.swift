//
//  ContentView.swift
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
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        HStack {
                            Image(systemName: "gearshape.fill")
                            Text("Settings")
                        }
                    }
                }
            }        }
        .padding()
    }
}

#Preview {
    HomeView()
}

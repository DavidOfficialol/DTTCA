//
//  UncompltedListView.swift
//  DTTCA
//
//  Created by Dツvid Official on 4/9/2026.
//

import SwiftUI

struct UncompletedListView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("New List")) {
                    NavigationLink(destination: NewLIstView()) {
                        HStack {
                            Image(systemName: "plus")
                            Text("New List")
                        }
                    }
                }
                Section(header: Text("Uncompleted List")) {
                    
                }
            }
        }
    }
}

#Preview {
    UncompletedListView()
}

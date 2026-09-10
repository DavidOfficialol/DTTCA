//
//  ViewTest.swift
//  DTTCA
//
//  Created by Dツvid Official on 9/9/2026.
//
//  Used to test out view components

import SwiftUI

struct ViewTest: View {
    @State private var sletedView = 2
    var body: some View {
            VStack{
                switch sletedView {
                case 0:
                    Text("Seltect a test")
                case 1:
                    SetLisV(image: "command", name: "Test")
                case 2:
                    ListItemV(bodytext: "test", type: "Checkbox")
                default:
                    Text("Out of range")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(alignment: .top, content: {
                Menu("Select Test") {
                    Button("TestHome") {
                        sletedView = 0
                    }
                    Button("Test SetLisV") {
                        sletedView = 1
                    }
                    Button("Test ListItemV") {
                        sletedView = 2
                    }
            }})
    }
        
}

#Preview {
    ViewTest()
}

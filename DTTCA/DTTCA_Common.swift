//
//  DTTCA_Common.swift
//  DTTCA
//
//  Created by Dツvid Official on 9/9/2026.
//

import SwiftUI

struct CheckBox: ToggleStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Label {
                configuration.label
            } icon: {
                Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                    .foregroundColor(configuration.isOn ? Color.accent : .secondary)
            }
            
        }
    }
}

struct ListItemV: View {
    @State private var checked: Bool = false
    var bodytext: String
    var type: String
    var body: some View {
        VStack {
            switch type {
            case "Checkbox":
                HStack{
                    Toggle(bodytext ,isOn: $checked)
                        .toggleStyle(CheckBox())
                }
            case "TextField":
                HStack{
                    
                }
            case "Stepper":
                HStack{}
            default:
                HStack{}
            }
        }
    }
}

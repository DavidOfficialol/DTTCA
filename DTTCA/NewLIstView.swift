//
//  NewLIstView.swift
//  DTTCA
//
//  Created by Dツvid Official on 4/9/2026.
//

import SwiftUI

struct NewLIstView: View {
    var body: some View {
        ScrollView {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
        }
        .navigationBarBackButtonHidden(true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay(alignment: .topLeading, content: {Menu {
            Button("Cancel") {
                
            }
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            Button("Another action") {
                
            }
        } label: {
            Image(systemName: "plus")
                .resizable()
                .frame(width: 25, height: 25)
        }
        .padding(15)
        })
        .overlay(alignment: .topTrailing, content: {
            Menu {
                Button("Save") {
                    
                }
                Button("Cancel") {
                    
                }
            } label: {
                Image(systemName: "square.and.arrow.down")
                    .resizable()
                    .frame(width: 24,height: 30)
            }
            .padding(15)
        })
    }
}

#Preview {
    NewLIstView()
}

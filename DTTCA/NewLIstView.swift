//
//  NewLIstView.swift
//  DTTCA
//
//  Created by Dツvid Official on 4/9/2026.
//

import SwiftUI

struct NewLIstView: View {
    @Environment(\.dismiss) var dismiss
    @State private var canceling = false
    let AlertTitle = "Are you sure you want to cancel?"
    
    var body: some View {
        ScrollView {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
        }
        .alert(AlertTitle, isPresented: $canceling) {
            Button("Yes", role: .destructive) {dismiss()}
            Button("No", role: .cancel) {canceling = false}
        } message: {
            Text(AlertTitle)
        }
        .navigationBarBackButtonHidden(true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .toolbar {
            ToolbarItem(placement: .topBarLeading, content: { Menu {
                Button("Checkbox") {
                    
                }
                Button("Stepper") {
                    
                }
                Button("Textbox") {
                    
                }
            } label: {
                Image(systemName: "plus")
                    .frame(width: 20, height: 20)
            }
            .padding(10)
            .ignoresSafeArea()
            })
            ToolbarItem(placement: .topBarTrailing, content: {
                Menu {
                    Button("Save") {
                        
                    }
                    Button("Cancel") {
                        canceling = true
                        print(canceling)
                    }

                } label: {
                    Image(systemName: "square.and.arrow.down")
                        .frame(width: 20,height: 20)
                }
                .padding(10)
                .ignoresSafeArea()
            })
            
        }
    }
}



#Preview {
//    NewLIstView()
    UncompletedListView()
//    UncompletedListView has the toolbar present where as NewListView doesn't
}

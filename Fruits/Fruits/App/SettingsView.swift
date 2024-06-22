//
//  SettingsView.swift
//  Fruits
//
//  Created by Oleh on 21.06.2024.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // MARK:  - SECTION 1
                    GroupBox(label:
                                SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many  essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    // MARK:  - SECTION 2
                    GroupBox(label:
                                SettingsLabelView(labelText: "Applciation", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Oleh Didushok")
                        SettingsRowView(name: "Designer", content: "Oleh Didushok")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Repository", linkLabel: "GitHub", linkDestination: "https://github.com/OlehDidushok?tab=repositories")
                        SettingsRowView(name: "LinkedIn", linkLabel: "OlehDidushok", linkDestination: "https://www.linkedin.com/in/oleh-didushok-556a21297/")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.0.1")
                    } //: BOX
                    
                    // MARK:  - SECTION 3
                    
                    
                }//: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                }))
                .padding()
            } //: SCROLL
        }//: NAVIGATION
    }
}

#Preview {
    SettingsView()
}

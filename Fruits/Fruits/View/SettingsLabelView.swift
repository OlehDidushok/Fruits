//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Oleh on 22.06.2024.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTIES
    var labelText: String
    var labelImage: String
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}
    
    #Preview {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }

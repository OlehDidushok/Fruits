//
//  SourceLinkView.swift
//  Fruits
//
//  Created by Oleh on 16.06.2024.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                
                Spacer()
                
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                
                Image(systemName: "arrow.up.right.square")
                
            }
            .font(.footnote)
        }
    }
}

#Preview {
    SourceLinkView()
        .previewLayout(.sizeThatFits)
        .padding()
}

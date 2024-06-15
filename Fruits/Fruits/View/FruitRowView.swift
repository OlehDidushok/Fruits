//
//  FruitRowView.swift
//  Fruits
//
//  Created by Oleh on 15.06.2024.
//

import SwiftUI

struct FruitRowView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
                    )
                        .cornerRadius(8)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text(fruit.title)
                            .font(.title2)
                            .fontWeight(.bold)
                        Text(fruit.headline)
                            .font(.caption)
                            .foregroundColor(Color.secondary)
                    }
        } //: HSTACK
    }
}

#Preview {
    FruitRowView(fruit: fruitsData[0])
        .previewLayout(.sizeThatFits)
        .padding()
}

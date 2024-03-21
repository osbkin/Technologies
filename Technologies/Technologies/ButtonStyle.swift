//
//  ButtonStyle.swift
//  Technologies
//
//  Created by Olha Kostenko on 2024-03-21.
//

import SwiftUI

struct ButtonStyle: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.purple2)
            .foregroundColor(.textColor)
            .cornerRadius(10)
    }
}

#Preview {
    ButtonStyle(title: "Text Title")
}

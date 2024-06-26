//
//  TechnologyTitleView.swift
//  Technologies
//
//  Created by Olha Kostenko on 2024-03-22.
//

import SwiftUI

struct TechnologyTitleView: View {
    
    let technology: Technology
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.clear)
                .frame(width: 120, height: 120)
            VStack {
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.brandPrimary, .brandSecondary]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 90, height: 90)
                    .cornerRadius(20)
                    .overlay {
                        Image(systemName: technology.imageName)
                            .font(.system(size: 40))
                            .foregroundColor(.textColor)
                    }
                Text(technology.name)
                    .font(.callout)
                    .fontDesign(.rounded)
                    .fontWeight(.semibold)
                    .foregroundColor(.textColor)
                    .scaledToFill()
            }
            .padding()
        }
    }
}

#Preview {
    TechnologyTitleView(technology: MockData.sampleTechnology)
}

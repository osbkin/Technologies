//
//  TechnologyDetailView.swift
//  Technologies
//
//  Created by Olha Kostenko on 2024-03-21.
//

import SwiftUI

struct TechnologyDetailView: View {
    var technology: Technology
    
    var body: some View {
        VStack {
            Spacer()
            
            TechnologyTitleView(technology: technology)
            Text(technology.description)
                .font(.body)
                .padding()
            
            Spacer()
            Button {
                
            } label: {
                ButtonStyle(title: "Learn More")
            }
        }
    }
}

#Preview {
    TechnologyDetailView(technology: MockData.sampleTechnology)
}

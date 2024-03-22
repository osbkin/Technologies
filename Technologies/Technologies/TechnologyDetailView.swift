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
            // MARK: - Add the dismiss button
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.bg)
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                    
                }
            }
            
            Spacer()
            
            TechnologyTitleView(technology: technology)
            DividerView()
            
            // MARK: - Add description for technology
            ScrollView(.vertical) {
                Text(technology.description)
                    .font(.body)
                    .padding()
            }
            
            DividerView()
            Spacer()
            
            // MARK: - Add the "Learn More" button
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

struct DividerView: View {
    var body: some View {
        Divider()
            .background(.bg)
            .padding()
    }
}

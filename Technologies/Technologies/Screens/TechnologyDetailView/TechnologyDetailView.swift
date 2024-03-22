//
//  TechnologyDetailView.swift
//  Technologies
//
//  Created by Olha Kostenko on 2024-03-21.
//

import SwiftUI

struct TechnologyDetailView: View {
    var technology: Technology
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            
            // MARK: - Add the dismiss button
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
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
                isShowingSafariView = true
            } label: {
                ButtonStyle(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: technology.urlString) ?? URL(string: "https://developer.apple.com/design/human-interface-guidelines")!)
        })
    }
}

struct DividerView: View {
    var body: some View {
        Divider()
            .background(.bg)
            .padding()
    }
}

#Preview {
    TechnologyDetailView(technology: MockData.sampleTechnology, isShowingDetailView: .constant(false))
}

//
//  ContentView.swift
//  Technologies
//
//  Created by Olha Kostenko on 2024-03-20.
//

import SwiftUI

struct TechnologiesGridView: View {
    
    @StateObject var viewModel = TechnologiesGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.technologies) { technology in
                        TechnologyTitleView(technology: technology)
                            .onTapGesture {
                                viewModel.selectedTechnology = technology
                            }
                    }
                }
            }
            .navigationTitle("Technologies")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                TechnologyDetailView(technology: viewModel.selectedTechnology!, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

#Preview {
    TechnologiesGridView()
}

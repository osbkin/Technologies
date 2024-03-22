//
//  TechnologiesGridViewModel.swift
//  Technologies
//
//  Created by Olha Kostenko on 2024-03-22.
//

import SwiftUI

final class TechnologiesGridViewModel: ObservableObject {
    
    var selectedTechnology: Technology? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}

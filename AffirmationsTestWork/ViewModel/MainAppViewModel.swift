//
//  MainAppViewModel.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import Foundation

final class MainAppViewModel:ObservableObject{
    
    let themesImages:[ImageResource] = [.theme1, .theme2, .theme3, .theme4, .theme5, .theme6, .theme7, .theme8, .theme9, .theme10, .theme11, .theme12]
    let categoriesImages:[ImageResource] = [.categories1, .categories2, .categories3, .categories4, .categories5, .categories6, .categories7, .categories8, .categories9, .categories10, .categories11, .categories12]
    
    @Published var simpleTheme: ImageResource = .theme1
    @Published var simpleCategories: ImageResource = .categories1
}

//
//  MainAppViewModel.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import Foundation

final class MainAppViewModel:ObservableObject{
    
    let themesImages:[ImageResource] = [.theme1, .theme2, .theme3, .theme4, .theme5, .theme6, .theme7, .theme8, .theme9, .theme10, .theme11, .theme12]
    
    @Published var simpleTheme: ImageResource = .theme1
}

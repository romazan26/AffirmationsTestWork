//
//  MainAppViewModel.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import Foundation

final class MainAppViewModel:ObservableObject{
    
    let themesImages:[ImageResource] = [.theme1, .theme2, .theme3, .theme4, .theme5, .theme6, .theme7, .theme8, .theme9, .theme10, .theme11, .theme12]
    let categoriesImages:[ImageResource] = [.categories1, .categories2, .categories3, .categories4, .categories5, .categories6, .categories7,
                                            .categories8, .categories9, .categories10, .categories11, .categories12]
    let affirmations:[String] = ["I am a strong, capable person", "I have done difficult things in the past, and I can do them again", "I have experienced challenges in the past, and I am more resilient because of this", "I am allowed to feel upset, angry, and sad sometimes—that’s part of being human", "My personal boundaries are important, and I’m allowed to express my needs to others", "“No” is a complete sentence, and I don’t have to explain or justify my boundaries", "I am allowed to feel good and to experience pleasure in life", "I am worthy of receiving good things and of accomplishing my goals in life", "The past is the past, and my past doesn’t predict my future", "I am allowed to take up space, to have desires, and to have a voice", "I don’t have to give up my hopes and dreams"]
    
    
    @Published var simpleTheme: ImageResource = .theme1
    @Published var simpleCategories: ImageResource = .categories1
}

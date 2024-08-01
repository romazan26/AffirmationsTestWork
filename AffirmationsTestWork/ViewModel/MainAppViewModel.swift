//
//  MainAppViewModel.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import Foundation
import SwiftUI
import CoreData

final class MainAppViewModel:ObservableObject{
    
    @AppStorage("isFirstStart") var isFirstStart: Bool?
    
    let manager = CoreDataManager.instance
    
    let themesImages:[ImageResource] = [.theme1, .theme2, .theme3, .theme4, .theme5, .theme6, .theme7, .theme8, .theme9, .theme10, .theme11, .theme12]
    let categoriesImages:[ImageResource] = [.categories1, 
        .categories2,
        .categories3,
        .categories4,
        .categories5,
        .categories6, 
        .categories7,
        .categories8,
        .categories9,
        .categories10,
        .categories11,
        .categories12]
    
    @Published var affirmations: [Afirmation] = []
    @Published var words: [Word] = []
    
    @Published var simpleAfirrmation: Afirmation!
    
    @Published var simpleTheme: ImageResource = .theme1
    @Published var simpleCategories: ImageResource = .categories1
    
    init(){
        getAfirmation()
        getWord()
        if affirmations.isEmpty{
            addAffirmation(title: "Love", words: ["I am worthy of love and deserve to receive love in abundance",
                                                 "My heart is open to giving and receiving love",
                                                 "I am surrounded by love every day and in every way",
                                                 "I attract love and loving relationships into my life",
                                                 "Love flows to me and through me effortlessly",
                                                 "I radiate love and others reflect love back to me",
                                                 "My relationships are filled with love, happiness, and respect",
                                                 "I am grateful for the love that surrounds me",
                                                 "Love comes to me easily and effortlessly",
                                                 "I am a magnet for loving and fulfilling relationships"])
            addAffirmation(title: "Friendship", words: ["I am surrounded by supportive and loving friends",
                                                       "I attract positive and loyal friendships into my life",
                                                       "My friends and I share mutual respect and trust",
                                                       "I am a kind and caring friend, and I receive the same in return",
                                                       "My friendships are filled with joy, laughter, and understanding",
                                                       "I am grateful for the amazing friends in my life",
                                                       "I nurture and cherish my friendships",
                                                       "I attract friends who support and uplift me",
                                                       "My friends and I grow together in love and harmony",
                                                       "I am a magnet for genuine and lasting friendships"])
        }
        simpleAfirrmation = affirmations.first
            print(affirmations)
    }
    
    func findAffirmation(categories: ImageResource){
        getAfirmation()
        var title = ""
        if categories == .categories1 {
            title = "Love"
            simpleAfirrmation = affirmations.first(where: {$0.title == title})
        }
        if categories == .categories2 {
            title = "Friendship"
            simpleAfirrmation = affirmations.first(where: {$0.title == title})
        }
        
    }
    
    //MARK: - Add Affirmation
    func addAffirmation(title: String, words: [String]){
        let newAffirmation = Afirmation(context: manager.context)
        newAffirmation.title = title
        for word in words {
            addWord(word: word, afirmation: newAffirmation)
        }
        
        save()
    }
    //MARK: - Add Word
    func addWord(word: String, afirmation: Afirmation){
        let newWord = Word(context: manager.context)
        newWord.wordAfirmation = word
        newWord.afirmation = afirmation
        
        save()
    }
    
    //MARK: - Get data
    func getAfirmation(){
        let request = NSFetchRequest<Afirmation>(entityName: "Afirmation")
        
        do{
            affirmations = try manager.context.fetch(request)
        }catch let error{
            print("Error fetching: \(error.localizedDescription)")
        }
    }
    func getWord(){
        let request = NSFetchRequest<Word>(entityName: "Word")
        
        do{
            words = try manager.context.fetch(request)
        }catch let error{
            print("Error fetching: \(error.localizedDescription)")
        }
    }
    
    //MARK: - Save data
    func save(){
        affirmations.removeAll()
        manager.save()
        getAfirmation()
    }
}

//
//  ViewModel.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import Foundation
import SwiftUI

final class StartViewModel: ObservableObject{
    
    @AppStorage("isFirstStart") var isFirstStart: Bool?
    
    @Published var startViewsTag = 1
    
    @Published var simpleGendder = ""
    @Published var simpleAge = ""
    @Published var simpleArea = ""
    @Published var simpleStartTime = Date()
    @Published var simpleEndTime = Date()
    @Published var simpleCountMotivation: Float = 0
    
    func slideStartView(){
        if startViewsTag < 5 {
            startViewsTag += 1
        }else{
            isFirstStart = false
        }
    }
}

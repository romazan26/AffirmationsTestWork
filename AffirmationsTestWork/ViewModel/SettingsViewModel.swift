//
//  SettingsViewModel.swift
//  AffirmationsTestWork
//
//  Created by Роман on 01.08.2024.
//

import Foundation
import SwiftUI

final class SettingsViewModel: ObservableObject{
    
    @Published var colorTheme = ColorApp.systemDefault.color
    
    @Published var reminders = false
    @Published var startAt = Date()
    @Published var endAt = Date()
    @Published var countReminders:Float = 0
    
    func changeColorScheme(){
       // colorSheme = .dark
    }
    
    enum ColorApp{
        case systemDefault
        case light
        case dark
        
        var color: ColorScheme? {
            switch self{
                
            case .systemDefault:
                    return nil
            case .light:
                return .light
            case .dark:
                return .dark
            }
        }
    }
}

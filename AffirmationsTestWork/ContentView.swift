//
//  ContentView.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vmSetting = SettingsViewModel()
    @StateObject var vmStart = StartViewModel()
    
    var body: some View {
        if vmStart.startViewsTag < 5{
            StartView(vm: vmStart)
        }else{
            mainAppView( vmSettings: vmSetting)
                .preferredColorScheme(vmSetting.colorTheme)
        }
    }
}

#Preview {
    ContentView()
}

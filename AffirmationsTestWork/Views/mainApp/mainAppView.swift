//
//  mainAppView.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import SwiftUI

struct mainAppView: View {
    
    @StateObject var vm = MainAppViewModel()
    
    var body: some View {
        NavigationView {
            TabView() {
                AffirmationsView(vm: vm).tabItem { VStack {
                    Image(systemName: "doc.plaintext.fill")
                    Text("Affirmation")
                } }
                CategoriesView().tabItem { VStack {
                    Image(systemName: "table.fill")
                    Text("Categories")
                } }
                ThemesView(vm: vm).tabItem { VStack {
                    Image(systemName: "paintpalette.fill")
                    Text("Themes")
                } }
                SettingsView().tabItem { VStack {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                } }
            }
        }
    }
}

#Preview {
    mainAppView()
}

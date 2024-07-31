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
            TabView() {
                AffirmationsView(vm: vm)
                    .padding(.bottom)
                    .tabItem { VStack {
                    Image(systemName: "doc.plaintext.fill")
                    Text("Affirmation")
                } }
                CategoriesView(vm: vm)
                    .padding(.bottom)
                    .tabItem { VStack {
                    Image(systemName: "rectangle.split.3x3.fill")
                    Text("Categories")
                } }
                ThemesView(vm: vm)
                    .padding(.bottom)
                    .tabItem { VStack {
                    Image(systemName: "paintpalette.fill")
                    Text("Themes")
                } }
                SettingsView()
                    .padding(.bottom)
                    .tabItem { VStack {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                } }
            }
            

    }
}

#Preview {
    mainAppView()
}

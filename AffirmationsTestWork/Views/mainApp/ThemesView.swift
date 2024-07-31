//
//  ThemesView.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import SwiftUI

struct ThemesView: View {
    @StateObject var vm: MainAppViewModel
    var body: some View {

        VStack {
            ScrollView {
                    ThemesListView(vm: vm, items: vm.themesImages)
                }
                
        }
        .navigationTitle("Themes")
        .navigationBarItems(trailing: Button("Unlock All", action: {
            //action
    }))
        }
    
}

#Preview {
    NavigationView {
        ThemesView(vm: MainAppViewModel())
    }
}

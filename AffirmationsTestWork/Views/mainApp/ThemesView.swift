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
        
        NavigationView {
            ScrollView {
                
                //MARK: - Top button unlock all
                HStack {
                    Spacer()
                    Button("Unlock All", action: {
                        //action
                    })
                }
                .padding(.horizontal, 20)
                .offset(y: -38)
                
                //MARK: - Themes
                ThemesListView(vm: vm, items: vm.themesImages)
                    .padding()
               
                //MARK: - bottom Button unlock all
                MainButtonView(text: "Unlock all")
                    .padding()
                
            }
                .navigationTitle("Themes")
        }
    }
    
}

#Preview {
    NavigationView {
        ThemesView(vm: MainAppViewModel())
    }
}

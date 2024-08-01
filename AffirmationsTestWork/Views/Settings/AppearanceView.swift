//
//  AppearanceView.swift
//  AffirmationsTestWork
//
//  Created by Роман on 01.08.2024.
//

import SwiftUI

struct AppearanceView: View {
    @StateObject var vm: SettingsViewModel
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
            Color.gray.opacity(0.1).ignoresSafeArea()
            VStack(spacing: 15) {
                //MARK: - Default
                HStack {
                    Button("Default") {
                        vm.colorTheme = nil
                    }
                    Spacer()
                    if vm.colorTheme == nil{
                        Image(systemName: "checkmark")
                    }
                }
                Divider()
                //MARK: - Dark
                HStack {
                    Button("Dark") {
                        vm.colorTheme = .dark
                    }
                    Spacer()
                    if vm.colorTheme == .dark{
                        Image(systemName: "checkmark")
                    }
                }
                Divider()
                //MARK: - Light
                HStack {
                    Button("Light") {
                        vm.colorTheme = .light
                    }
                    Spacer()
                    if vm.colorTheme == .light{
                        Image(systemName: "checkmark")
                    }
                }
            }
            .padding()
            .background(Color.backStack.cornerRadius(15))
            .padding()
            .padding(.top, 30)
            .navigationTitle("Appearance")
        .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    AppearanceView(vm: SettingsViewModel())
}

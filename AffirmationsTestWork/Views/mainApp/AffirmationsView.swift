//
//  AffirmationsView.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import SwiftUI

struct AffirmationsView: View {
    @StateObject var vm: MainAppViewModel
    var body: some View {
        ZStack {
            Image(vm.simpleTheme)
                .resizable()
            .ignoresSafeArea()
        }
    }
}

#Preview {
    AffirmationsView(vm: MainAppViewModel())
}

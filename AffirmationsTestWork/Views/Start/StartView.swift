//
//  StartView.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import SwiftUI

struct StartView: View {
    @StateObject var vm: StartViewModel
    var body: some View {
        ZStack {
            //MARK: - Background
            Color.purpleApp.ignoresSafeArea()
            
            //MARK: - MainStack
            VStack {
                
                Spacer()
                
                if vm.startViewsTag == 1 {
                    StartTextView()
                }
                if vm.startViewsTag == 2 {
                    GenderSelectionView(vm: vm)
                }
                if vm.startViewsTag == 3 {
                    AgeSelectionView(vm: vm)
                }
                if vm.startViewsTag == 4 {
                    AreaSelectionView(vm: vm)
                }
                if vm.startViewsTag == 5 {
                    DailyMotivationView(vm: vm)
                }
                
                Spacer()
                
                //MARK: - Continue button
                Button {
                    vm.slideStartView()
                } label: {
                        MainButtonView(text: "Continue")
                }

            }
            .padding()
            .animation(.easeInOut, value: vm.startViewsTag)
        }
    }
}

#Preview {
    StartView(vm: StartViewModel())
}

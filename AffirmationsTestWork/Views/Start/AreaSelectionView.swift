//
//  AreaSelectionView.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import SwiftUI

struct AreaSelectionView: View {
    @StateObject var vm: ViewModel
    var body: some View {
        VStack {
            
            //MARK: - Title
            Text("What area of your life would you like to improve?")
                .multilineTextAlignment(.center)
                .font(.system(size: 32, weight: .bold))
            
            Text("Later you can choose any other category")
                .padding()
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .font(.system(size: 18))
          
            //MARK: - Gender List
            SelectionButtonView(title: "Self Care", selection: vm.simpleArea)
                .onTapGesture {vm.simpleArea = "Self Care"}
            SelectionButtonView(title: "Work & Career", selection: vm.simpleArea)
                .onTapGesture {vm.simpleArea = "Work & Career"}
        }
        .animation(.easeIn, value: vm.simpleArea)
    }
}

#Preview {
    AreaSelectionView(vm: ViewModel())
}

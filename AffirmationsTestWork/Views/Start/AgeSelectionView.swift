//
//  AgeSelectionView.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import SwiftUI

struct AgeSelectionView: View {
    @StateObject var vm: StartViewModel
    var body: some View {
        VStack {
            
            //MARK: - Title
            Text("What is your age?")
                .multilineTextAlignment(.center)
                .font(.system(size: 32, weight: .bold))
            
            Text("This information is for better personalization")
                .padding()
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .font(.system(size: 18))
          
            //MARK: - Gender List
            SelectionButtonView(title: "Under 21", selection: vm.simpleAge)
                .onTapGesture {vm.simpleAge = "Under 21"}
            SelectionButtonView(title: "21-35", selection: vm.simpleAge)
                .onTapGesture {vm.simpleAge = "21-35"}
            SelectionButtonView(title: "36-50", selection: vm.simpleAge)
                .onTapGesture {vm.simpleAge = "36-50"}
            SelectionButtonView(title: "Over 50", selection: vm.simpleAge)
                .onTapGesture {vm.simpleAge = "Over 50"}
        }
        .animation(.easeIn, value: vm.simpleAge)
    }
}

#Preview {
    AgeSelectionView(vm: StartViewModel())
}

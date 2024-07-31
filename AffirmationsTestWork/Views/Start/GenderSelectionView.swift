//
//  GenderSelectionView.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import SwiftUI

struct GenderSelectionView: View {
    @StateObject var vm: StartViewModel
    var body: some View {
        VStack {
            
            //MARK: - Title
            Text("What gender best describes you?")
                .multilineTextAlignment(.center)
                .font(.system(size: 32, weight: .bold))
            
            Text("This helps us to point out the best cotent for you")
                .padding()
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .font(.system(size: 18))
          
            //MARK: - Gender List
            SelectionButtonView(title: "Female", selection: vm.simpleGendder)
                .onTapGesture {vm.simpleGendder = "Female"}
            SelectionButtonView(title: "Male", selection: vm.simpleGendder)
                .onTapGesture {vm.simpleGendder = "Male"}
            SelectionButtonView(title: "Non-binary", selection: vm.simpleGendder)
                .onTapGesture {vm.simpleGendder = "Non-binary"}
            SelectionButtonView(title: "Prefer not to answer", selection: vm.simpleGendder)
                .onTapGesture {vm.simpleGendder = "Prefer not to answer"}
        }
        .animation(.easeIn, value: vm.simpleGendder)
    }
}

#Preview {
    GenderSelectionView(vm: StartViewModel())
}

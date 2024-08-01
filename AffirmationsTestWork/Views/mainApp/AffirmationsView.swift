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
           
                TabView {
                    if !vm.affirmations.isEmpty{
                        if let words = vm.simpleAfirrmation.word?.allObjects as? [Word]{
                            ForEach(words, id: \.self) { word in
                                Text(word.wordAfirmation ?? "")
                                    .foregroundStyle(.white)
                                    .font(.title)
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal, 20)
                            }
                            .rotationEffect(.degrees(-90))
                        }
                    }
                }
                .rotationEffect(.degrees(90), anchor: .center)
                .tabViewStyle(.page(indexDisplayMode: .never))
            
                
        }
    }
}

#Preview {
    AffirmationsView(vm: MainAppViewModel())
}

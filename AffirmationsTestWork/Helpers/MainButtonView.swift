//
//  MainButtonView.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import SwiftUI

struct MainButtonView: View {
    var text = ""
    var body: some View {
        ZStack {
            Color.button
            Text(text)
                .foregroundStyle(.white)
                .font(.system(size: 22, weight: .bold))
        }
        .frame(height: 65)
        .cornerRadius(15)
    }
}

#Preview {
    MainButtonView(text: "Continue")
}

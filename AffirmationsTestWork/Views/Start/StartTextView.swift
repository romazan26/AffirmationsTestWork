//
//  StartTextView.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import SwiftUI

struct StartTextView: View {
    var body: some View {
        VStack {
            //MARK: - Start text
            Text("Read and repeat affirmations several times a day to build positive thinking")
                .multilineTextAlignment(.center)
                .font(.largeTitle)
        }
    }
}

#Preview {
    StartTextView()
}

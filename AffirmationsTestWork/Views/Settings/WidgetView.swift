//
//  WidgeetView.swift
//  AffirmationsTestWork
//
//  Created by Роман on 01.08.2024.
//

import SwiftUI

struct WidgetView: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
            Color.gray.opacity(0.1).ignoresSafeArea()
            VStack(alignment: .leading,spacing: 20) {
                Text("How to add a widget")
                    .font(.title)
                Divider()
                Text("1. Hold down any app on your home screen to edit it. Your apps will start to jiggle.\n2. Tap the + button at the top right of your device to view widget catalog.\n3. Scroll to search for Affirmations. Tap on it and choose a size.\n4. Drag the widget to the desired location and press done.")
            }
            .padding()
            .background(Color.backStack.cornerRadius(15))
            .padding()
            .padding(.top, 30)
            .navigationTitle("Widget")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NavigationView {
        WidgetView()
    }
}

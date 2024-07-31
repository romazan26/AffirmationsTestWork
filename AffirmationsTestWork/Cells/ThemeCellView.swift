//
//  ThemeCellView.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import SwiftUI

struct ThemeCellView: View {
    var image: ImageResource
    var ischoose: ImageResource = .theme1
    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            VStack {
                Spacer()
                Text("I am perfect")
                    .foregroundStyle(.white)
                    .font(.title3)
                .multilineTextAlignment(.center)
                Spacer()
                HStack {
                    Spacer()
                    Image(systemName: ischoose == image ? "largecircle.fill.circle" : "ring.circle")
                        .resizable()
                        .foregroundStyle(.white)
                    .frame(width: 20, height: 20)
                    .padding(.bottom)
                    .offset(x: 10.0)
                }
            }.padding()
        }
        .frame(width: 100, height: 170)
        .cornerRadius(10)
    }
}

#Preview {
    ThemeCellView(image: .theme1, ischoose: .theme1)
}

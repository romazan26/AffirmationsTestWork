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
                .frame(width: 120, height: 200)
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
                    .offset(x: 5)
                }
            }.padding()
        }
        .frame(width: 120, height: 200)
        .cornerRadius(10)
    }
}

#Preview {
    ThemeCellView(image: .theme1, ischoose: .theme1)
}

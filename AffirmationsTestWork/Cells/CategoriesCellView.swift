//
//  CategoriesCellView.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import SwiftUI

struct CategoriesCellView: View {
    var image: ImageResource
    var ischoose: ImageResource = .theme1
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 180, height: 180)
            
            HStack {
                Text("Categories")
                    .foregroundStyle(.white)
                    .font(.system(size: 12,weight: .heavy))
                .multilineTextAlignment(.center)
                Spacer()
                HStack {
                    Spacer()
                    Image(systemName: ischoose == image ? "largecircle.fill.circle" : "ring.circle")
                        .resizable()
                        .foregroundStyle(.white)
                    .frame(width: 20, height: 20)
                }
            }
            
            .padding()
            .background(Color(.black).opacity(0.6))
        }
        .frame(width: 180, height: 180)
        .cornerRadius(10)
    }
}

#Preview {
    CategoriesCellView(image: .categories1)
}

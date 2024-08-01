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
    @State private var nameCategories = "Categories"
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 180, height: 180)
            
            HStack {
                Text(nameCategories)
                    .foregroundStyle(.white)
                    .font(.system(size: 12,weight: .heavy))
                .multilineTextAlignment(.center)
                Spacer()
                HStack {
                    Spacer()
                    if image == .categories1{
                        Image(systemName: ischoose == image ? "largecircle.fill.circle" : "ring.circle")
                            .resizable()
                            .foregroundStyle(.white)
                            .frame(width: 20, height: 20)
                    }else if image == .categories2{
                        Image(systemName: ischoose == image ? "largecircle.fill.circle" : "ring.circle")
                            .resizable()
                            .foregroundStyle(.white)
                            .frame(width: 20, height: 20)
                    }else{
                        Image(systemName: "lock.circle.fill")
                            .resizable()
                            .foregroundStyle(.white)
                            .frame(width: 20, height: 20)
                    }
                }
            }
            
            .padding()
            .background(Color(.black).opacity(0.6))
        }
        .onAppear(perform: {
            if image == .categories1{
                nameCategories = "Love"
            }
            if image == .categories2{
                nameCategories = "Friendship"
            }
        })
        .frame(width: 180, height: 180)
        .cornerRadius(10)
    }
}

#Preview {
    CategoriesCellView(image: .categories1)
}

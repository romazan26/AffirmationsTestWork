//
//  GenderButtonView.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import SwiftUI

struct SelectionButtonView: View {
    var title = ""
    var selection = "Female"
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
            //MARK: - background
            Color(title == selection ? .selectionButton : .white)
            
            //MARK: - Title
            Text(title)
                .padding()
        }
        .overlay {
            RoundedRectangle(cornerRadius: 15)
                .stroke(title == selection ? .button : .gray,
                        lineWidth: title == selection ? 4.0 : 2.0)
        }
        .frame(height: 65)
        .cornerRadius(15)
    }
}

#Preview {
    SelectionButtonView(title: "Female")
}

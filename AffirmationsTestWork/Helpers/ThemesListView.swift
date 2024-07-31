//
//  genreLstView.swift
//  Movieplanner
//
//  Created by Роман on 10.06.2024.
//

import SwiftUI

struct ThemesListView: View {
    @StateObject var vm: MainAppViewModel
    let items: [ImageResource]
    let screenWidth = 3
    @State var groupedItems: [[ImageResource]] = [[ImageResource]]()
    
    
    private  func createGroupItems(_ items: [ImageResource]) -> [[ImageResource]]{
        var groupedItems: [[ImageResource]] = [[ImageResource]]()
        var tempItems: [ImageResource] = [ImageResource]()
        
        var count = 0
        for item in items {
            
            if count < screenWidth {
                tempItems.append(item)
                count += 1
            }else {
                count = 1
                groupedItems.append(tempItems)
                tempItems.removeAll()
                tempItems.append(item)
            }
        }
        groupedItems.append(tempItems)
        
        return groupedItems
    }
    
    var body: some View {
        VStack(alignment: .leading){
            ForEach(groupedItems, id: \.self) { subItem in
                HStack{
                    ForEach(subItem, id: \.self) { item in
                        ThemeCellView(image: item, ischoose: vm.simpleTheme)
                            //.fixedSize()
                            .onTapGesture {
                                vm.simpleTheme = item
                            }
                            
                    }
                }
            }
        }
        .onAppear(perform: {
            self.groupedItems = createGroupItems(items)
        })
    }
}

#Preview {
    ThemesListView(vm: MainAppViewModel(), items: [.theme1, .theme2, .theme3, .theme4, .theme5, .theme6, .theme7, .theme8, .theme9, .theme10, .theme11, .theme12])
}

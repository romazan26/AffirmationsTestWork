//
//  CategoriesListView.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import SwiftUI

struct CategoriesListView: View {
    @StateObject var vm: MainAppViewModel
    let items: [ImageResource]
    let screenWidth = 2
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
        VStack{
            ForEach(groupedItems, id: \.self) { subItem in
                HStack{
                    ForEach(subItem, id: \.self) { item in
                        CategoriesCellView(image: item, ischoose: vm.simpleCategories)
                            .onTapGesture {
                                vm.simpleCategories = item
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
    CategoriesListView(vm: MainAppViewModel(), items: [.categories1, .categories2, .categories3, .categories4, .categories5, .categories6, .categories7, .categories8, .categories9, .categories10, .categories11, .categories12])
}

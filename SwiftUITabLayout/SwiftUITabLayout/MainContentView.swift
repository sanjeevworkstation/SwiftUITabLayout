//
//  ContentView.swift
//  SwiftUITabLayout
//
//  Created by Sanjeev Gautam on 26/11/20.
//

import SwiftUI

struct MainContentView: View {
    
    // Current tab page index
    @State private var currentPage: Int = 0
    
    var body: some View {
        
        // data to draw TabLayout View
        let titles = ["Tab 1", "Tab 2", "Tab 3", "Tab 4", "Tab 5", "Tab 6", "Tab 7", "Tab 8", "Tab 9", "Tab 10"]
        let sModel = SelectedTabDataModel(textColor: .red, backgroundColor: Color.red.opacity(0.1), borderColor: .red, borderWidth: 1, cornerRadious: 25)
        let uModel = UnselectedTabDataModel(textColor: .gray, backgroundColor: Color.gray.opacity(0.3), borderColor: .gray, borderWidth: 1, cornerRadious: 25)
        let dataModel = TabDataModel(tabTitles: titles, spacingBetweenTabs: 10, paddingLeftRight: 10, selectedTabDataModel: sModel, unselectedTabDataModel: uModel)
        
        // VStack which contains TabLayout and Page View
        VStack {
            
            // Add TabLayoutView
            TabLayoutView(dataModel: dataModel, action: { index in
                print("TabLayoutView tab tapped index: \(index)")
                self.currentPage = index
            })
            .frame(height: 40)
            
            // TabView (as UIPageViewController in UIKit)
            // Add Page Views in TabView
            TabView(selection: $currentPage) {
                ForEach(0..<titles.count) { index in
                    PageView(pageIndex: index)
                }
            }
            // Display page dots view
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            // animate on scroll
            .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/)
        }
        .background(Color(.black).opacity(0.15))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}

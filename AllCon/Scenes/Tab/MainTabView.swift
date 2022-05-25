//
//  MainTabView.swift
//  Cafe
//
//  Created by Eunyeong Kim on 2021/08/15.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
 
        TabView {
            NaviView()
                .tabItem {
                    Tab.myPage.imageItem
                    Tab.myPage.textItem

                }
            ListView()
                .tabItem {
                    Tab.recoList.imageItem
                    Tab.recoList.textItem
                }
            
            SearchView()
                .tabItem {
                    Tab.search.imageItem
                    Tab.search.textItem

                }
        }
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

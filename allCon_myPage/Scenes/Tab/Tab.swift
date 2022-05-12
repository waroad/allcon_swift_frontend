//
//  Tab.swift
//  Cafe
//
//  Created by Eunyeong Kim on 2021/08/15.
//

import SwiftUI

enum Tab {
    case myPage
    case recoList
    case search

    var textItem: Text {
        switch self {
        case .myPage: return Text("Home")
        case .recoList: return Text("RecoList")
        case .search: return Text("Search")
        }
    }

    var imageItem: Image {
        switch self {
        case .myPage: return Image(systemName: "house.fill")
        case .recoList: return Image(systemName: "list.dash")
        case .search: return Image(systemName: "magnifyingglass.circle")
        }
    }
}

//
//  OtherView.swift
//  Cafe
//
//  Created by Eunyeong Kim on 2021/08/15.
//

import SwiftUI

struct SearchView: View {
    init() {
        UITableView.appearance().backgroundColor = .systemBackground
    }

    var body: some View {
        NavigationView {
            List {
//                ForEach(Menu.allCases) { section in
//                    Section(
//                        header: Text(section.title)
//                    ) {
//                        ForEach(section.menu, id: \.hashValue) { raw in
//                            NavigationLink(raw, destination: Text("\(raw)"))
//                        }
//                    }
//                }
            }
                .listStyle(GroupedListStyle())
                .navigationTitle("Search")
                .toolbar {
                    NavigationLink(
                        destination: SettingView(),
                        label: {
                            Image(systemName: "gear")
                        })
                }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

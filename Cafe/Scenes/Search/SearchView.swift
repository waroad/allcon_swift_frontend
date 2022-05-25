//
//  OtherView.swift
//  Cafe
//
//  Created by Eunyeong Kim on 2021/08/15.
//

import SwiftUI

//struct SearchView: View {
//    init() {
//        UITableView.appearance().backgroundColor = .systemBackground
//    }
//
//    var body: some View {
//        NavigationView {
//            List {
////                ForEach(Menu.allCases) { section in
////                    Section(
////                        header: Text(section.title)
////                    ) {
////                        ForEach(section.menu, id: \.hashValue) { raw in
////                            NavigationLink(raw, destination: Text("\(raw)"))
////                        }
////                    }
////                }
//            }
//                .listStyle(GroupedListStyle())
//                .navigationTitle("Search")
//                .toolbar {
//                    NavigationLink(
//                        destination: SettingView(),
//                        label: {
//                            Image(systemName: "gear")
//                        })
//                }
//        }
//    }
//}
struct SearchView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> ViewController {

        UIStoryboard(name: "DescribeMovie", bundle: nil)
            .instantiateViewController(withIdentifier: "ViewController") as! ViewController
    }

    func updateUIViewController(_ uiViewController:
                            ViewController, context: Context) {
    
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

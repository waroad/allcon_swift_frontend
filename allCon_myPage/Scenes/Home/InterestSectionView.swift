//
//  MenuSuggestionSectionView.swift
//  Cafe
//
//  Created by Eunyeong Kim on 2021/08/15.
//

import SwiftUI

struct InterestSectionView: View {
    @Binding var coffeeMenu: [CoffeeMenu]

    var body: some View {
        VStack {
//            Text("\(User.shared.username)님의 검색기록")
            Text("관심목록")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16.0)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(coffeeMenu) { menu in
                        InterestItemView(coffeeMenu: menu)
                    }
                }
                .padding(.horizontal, 16.0)
            }
            HStack {
                Text("회원탈퇴")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(EdgeInsets(top: 8,leading: 0,bottom: 0, trailing: 0))
                Spacer()
                Button(action: {}) {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.secondary)
                }
            }.padding(.horizontal, 16.0)
        }
    }
}

struct InterestItemView: View {
    let coffeeMenu: CoffeeMenu

    var body: some View {
        VStack {
            coffeeMenu.image
                .resizable()
                .clipShape(Rectangle())
                .frame(width: 100, height: 180)
//            Text(coffeeMenu.name)
//                .font(.caption)
        }
    }
}

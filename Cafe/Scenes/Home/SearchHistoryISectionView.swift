//
//  MenuSuggestionSectionView.swift
//  Cafe
//
//  Created by Eunyeong Kim on 2021/08/15.
//

import SwiftUI

struct SearchHistoryISectionView: View {
    @Binding var movie: [Movie]
    var body: some View {
        VStack {
//            Text("\(User.shared.username)님의 검색기록")
            Text("검색기록")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16.0)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(movie) { menu in
                        SearchHistoryItemView(movie: menu)
                    }
                }
                .padding(.horizontal, 16.0)
            }
        }
    }
}

struct SearchHistoryItemView: View {
    let movie: Movie

    var body: some View {
        VStack {
            movie.image
                .resizable()
                .clipShape(Rectangle())
                .frame(width: 100, height: 150)

        }
    }
}

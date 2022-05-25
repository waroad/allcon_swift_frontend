

import SwiftUI

struct InterestSectionView: View {
    @Binding var movies: [Movie]

    var body: some View {
        VStack {
            Text("\(User.shared.username)님의 검색기록")
            Text("관심목록")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16.0)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(movies) { movie in
                        InterestItemView(movies: movie)
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
    let movies: Movie

    var body: some View {
        VStack {
            movies.image
                .resizable()
                .clipShape(Rectangle())
                .frame(width: 100, height: 150)
//            Text(coffeeMenu.name)
//                .font(.caption)
        }
    }
}

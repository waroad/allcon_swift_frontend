

import SwiftUI

class MovieViewModel: ObservableObject {
    @Published var isNeedToReload = false {
        didSet {
            guard isNeedToReload else { return }

            movies.shuffle()

            isNeedToReload = false
        }
    }

    @Published var movies: [Movie] = [
        Movie(image: Image("001"), name: "아메리카노"),
        Movie(image: Image("002"), name: "아이스 아메리카노"),
        Movie(image: Image("003"), name: "카페라떼"),
        Movie(image: Image("004"), name: "아이스 카페라떼"),
        Movie(image: Image("005"), name: "드립커피"),
        Movie(image: Image("006"), name: "아이스 드립커피")
    ]


}

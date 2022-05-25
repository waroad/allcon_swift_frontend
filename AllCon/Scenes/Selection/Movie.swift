////
////  EmojiMemoryGame.swift 얘는 모델이 될 거임
////  Memorize
////
////  Created by 정혜인 on 2022/03/18.
////
//
//import SwiftUI
//
//class Movie: ObservableObject{
//    typealias Movie = SelectCard<String>.Movie
//
//    private static let emojis = ["🚂", "🚀", "🚁", "🚜", "🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🦽", "🦼", "🛴", "🚲", "🛵", "🏍", "🛺"]
//
//    private static func createMemoryGame() -> SelectCard<String> {
//        SelectCard<String> (numberOfPairsOfCards: 9){pairIndex in emojis[pairIndex]
//        }
//    }
//
//    @Published private var model = createMemoryGame()
//
//
//    var cards: Array<Movie>{
//        model.movies
//    }
//    // MARK: - Intent(s)
//
//    func choose(_ movie: Movie){
//        model.choose(movie)
//    }
//
//    func shuffle(){
//        model.shuffle()
//    }
//
//    func restart(){
//        model = Movie.createMemoryGame()
//    }
//}
//
//struct Movie_Previews: PreviewProvider {
//    static var previews: some View {
//        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
//    }
//}

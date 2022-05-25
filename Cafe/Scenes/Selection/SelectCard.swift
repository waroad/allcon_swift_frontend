//
//  MemorizeGame.swift
//  Memorize
//
//  Created by 정혜인 on 2022/03/18.
//

import Foundation

struct SelectCard<MovieContent> where MovieContent: Equatable {
    private(set) var movies: Array<Movie>

    private var indexOfTheOneAndOnlyFaceUpCard: Int?{
        get{
            movies.indices.filter{movies[$0].isFaceUp}.oneAndOnly}
        set{
            movies.indices.forEach{movies[$0].isFaceUp=($0 == newValue)}}
    }


    mutating func choose(_ movie: Movie) {
        if let chosenIndex = movies.firstIndex(where: { $0.id == movie.id}),
            !movies[chosenIndex].isFaceUp,
            !movies[chosenIndex].isMatched
        {
            if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard {
                if movies[chosenIndex].content == movies[potentialMatchIndex].content{
                    movies[chosenIndex].isMatched = true
                    movies[potentialMatchIndex].isMatched = true
                }
                movies[chosenIndex].isFaceUp = true
            }else {

                indexOfTheOneAndOnlyFaceUpCard = chosenIndex
            }
        }
    }

    mutating func shuffle() {
        movies.shuffle()
    }

    init(numberOfPairsOfCards: Int, creatCardContent: (Int)-> MovieContent) {
        movies = []
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = creatCardContent(pairIndex)
            movies.append(Movie(content: content, id: pairIndex*2))
            movies.append(Movie(content: content, id: pairIndex*2+1))
        }
        movies.shuffle()
    }

    struct Movie: Identifiable {
        var isFaceUp = false {
            didSet {
                if isFaceUp {
                    startUsingBonusTime()
                } else {
                    stopUsingBonusTime()
                }
            }
        }
        var isMatched = false {
            didSet {
                stopUsingBonusTime()
            }
        }
        let content: MovieContent
        let id: Int
        
        // MARK: - Bonus Time
        
        // this could give matching bonus points
        // if the user matches the card
        // before a certain amount of time passes during which the card is face up
        
        // can be zero which means "no bonus available" for this card
        var bonusTimeLimit: TimeInterval = 6
        
        // how long this card has ever been face up
        private var faceUpTime: TimeInterval {
            if let lastFaceUpDate = self.lastFaceUpDate {
                return pastFaceUpTime + Date().timeIntervalSince(lastFaceUpDate)
            } else {
                return pastFaceUpTime
            }
        }
        // the last time this card was turned face up (and is still face up)
        var lastFaceUpDate: Date?
        // the accumulated time this card has been face up in the past
        // (i.e. not including the current time it's been face up if it is currently so)
        var pastFaceUpTime: TimeInterval = 0
        
        // how much time left before the bonus opportunity runs out
        var bonusTimeRemaining: TimeInterval {
            max(0, bonusTimeLimit - faceUpTime)
        }
        // percentage of the bonus time remaining
        var bonusRemaining: Double {
            (bonusTimeLimit > 0 && bonusTimeRemaining > 0) ? bonusTimeRemaining/bonusTimeLimit : 0
        }
        // whether the card was matched during the bonus time period
        var hasEarnedBonus: Bool {
            isMatched && bonusTimeRemaining > 0
        }
        // whether we are currently face up, unmatched and have not yet used up the bonus window
        var isConsumingBonusTime: Bool {
            isFaceUp && !isMatched && bonusTimeRemaining > 0
        }
        
        // called when the card transitions to face up state
        private mutating func startUsingBonusTime() {
            if isConsumingBonusTime, lastFaceUpDate == nil {
                lastFaceUpDate = Date()
            }
        }
        // called when the card goes back face down (or gets matched)
        private mutating func stopUsingBonusTime() {
            pastFaceUpTime = faceUpTime
            self.lastFaceUpDate = nil
        }
    }
}

extension Array {
    var oneAndOnly: Element? {
        if count == 1 {
            return first
        } else {
            return nil
        }
    }
}
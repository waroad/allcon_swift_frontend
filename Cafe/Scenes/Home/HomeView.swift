//
//  HomeView.swift
//  Cafe
//
//  Created by Eunyeong Kim on 2021/08/15.
//

import SwiftUI

struct HomeView: View {
//    @ObservedObject var viewModel = HomeViewModel()
    @ObservedObject var movieModel = MovieViewModel()

    var body: some View {
        ScrollView(.vertical) {
        
//            HomeHeaderView(isNeedToReload: $viewModel.isNeedToReload)
            Spacer(minLength: 32.0)
            NaviView()
//            EventsSectionView(events: $viewModel.events)
            Spacer(minLength: 32.0)
            SearchHistoryISectionView(movie: $movieModel.movies)
            Spacer(minLength: 32.0)
            InterestSectionView(movies: $movieModel.movies)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

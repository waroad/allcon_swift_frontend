//
//  HomeView.swift
//  Cafe
//
//  Created by Eunyeong Kim on 2021/08/15.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()

    var body: some View {
        ScrollView(.vertical) {
            HomeHeaderView(isNeedToReload: $viewModel.isNeedToReload)
            Spacer(minLength: 32.0)
            EventsSectionView(events: $viewModel.events)
            Spacer(minLength: 32.0)
            SearchHistoryISectionView(coffeeMenu: $viewModel.coffeeMenu)
            Spacer(minLength: 32.0)
            InterestSectionView(coffeeMenu: $viewModel.coffeeMenu)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

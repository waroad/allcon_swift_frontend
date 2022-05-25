////
////  Login.swift
////  Cafe
////
////  Created by 정혜인 on 2022/05/17.
////
//
//import SwiftUI
//
//struct LoginView: View {
//    @ObservedObject var viewModel = HomeViewModel()
//
//    var body: some View {
//        ScrollView(.vertical) {
//            HomeHeaderView(isNeedToReload: $viewModel.isNeedToReload)
//            Spacer(minLength: 32.0)
//            EventsSectionView(events: $viewModel.events)
//            Spacer(minLength: 32.0)
//            SearchHistoryISectionView(coffeeMenu: $viewModel.coffeeMenu)
//            Spacer(minLength: 32.0)
//            InterestSectionView(coffeeMenu: $viewModel.coffeeMenu)
//        }
//    }
//}
//
//struct LoginView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginView()
//    }
//}

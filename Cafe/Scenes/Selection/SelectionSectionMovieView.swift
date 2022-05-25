//
//  Taste.swift
//  LoginPageSwiftUITutorial
//
//  Created by 정혜인 on 2022/05/17.
//  Copyright © 2022 Andreas Schultz. All rights reserved.
//

import SwiftUI

//struct SelectionView : View {
//
//    var body: some View {
//        ScrollView {// 1
//        VStack {
//        TitleText()
//          // 2
//          HStack {
//            RoundedRectangle(cornerRadius: 10).fill(Color.blue)
//                  .frame(width: 150, height: 200)
//            Spacer()
//            RoundedRectangle(cornerRadius: 10).fill(Color.blue)
//                  .frame(width: 150, height: 200)
//          }
//          // 3
//            HStack {
//                RoundedRectangle(cornerRadius: 10).fill(Color.blue)
//                      .frame(width: 150, height: 200)
//                Spacer()
//                RoundedRectangle(cornerRadius: 10).fill(Color.blue)
//                      .frame(width: 150, height: 200)
//            }
//            HStack {
//              RoundedRectangle(cornerRadius: 10).fill(Color.blue)
//                    .frame(width: 150, height: 200)
//              Spacer()
//              RoundedRectangle(cornerRadius: 10).fill(Color.blue)
//                    .frame(width: 150, height: 200)
//            }
//            HStack {
//              RoundedRectangle(cornerRadius: 10).fill(Color.blue)
//                    .frame(width: 150, height: 200)
//              Spacer()
//              RoundedRectangle(cornerRadius: 10).fill(Color.blue)
//                    .frame(width: 150, height: 200)
//            }
//        }.font(.title)
//        .foregroundColor(.white)
//        .padding(20.0)
//        }
//    }
//}


//struct TitleText : View {
//    var body: some View {
//        return Text("취향선택")
//            .font(.largeTitle)
//            .fontWeight(.semibold)
//            .foregroundColor(Color.black)
//            .padding(.bottom, 20)
//
//    }
//}

//struct SelectionSectionView: View {
//    @Binding var movie: [Movie]
//
//    var body: some View {
//        VStack {
//
//            ScrollView( .vertical, showsIndicators: false) {
//                LazyHStack {
//                    ForEach(movie) { menu in
//                        SelectionSectionMovieView(movie: menu)
//                    }
//                }
//                .padding(.horizontal, 16.0)
//            }
//        }
//    }
//}
struct TasteView_Previews : PreviewProvider {
    static var previews: some View {
        SelectionView()
    }
}

//struct SelectionSectionMovieView: View {
//    let movie: Movie
//
//    var body: some View {
//        VStack {
////            TitleText()
//            movie.image
//                .resizable()
//                .clipShape(Rectangle())
//                .frame(width: 100, height: 150)
////            Text(coffeeMenu.name)
////                .font(.caption)
//        }
//    }
//}


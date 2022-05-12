//
//  EventsSectionView.swift
//  Cafe
//
//  Created by Eunyeong Kim on 2021/08/15.
//

import SwiftUI

struct EventsSectionView: View {
    @Binding var events: [Event]


    var body: some View {
        
        VStack {
//            HStack {
//            ModiUserInfoSectionView()
//            }.padding(.horizontal, 16.0)
            HStack {
                Text("정보수정")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(EdgeInsets(top: 0,leading: 0,bottom: 8, trailing: 0))
                Spacer()
                Button(action: {}) {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.secondary)
                }
            }.padding(.horizontal, 16.0)
            HStack {
                Text("취향 재설정")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding(.horizontal, 16.0)
            HStack{
                EventsSectionItemView()
            }.padding(.horizontal, 16.0)
    }
}
        
//struct ModiUserInfoSectionView: View {
//    var body: some View {
////        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
//                Text("정보수정")
//                    .font(.title)
//                    .fontWeight(.bold)
//                    .foregroundColor(Color.black)
////        }
//    }
//}

struct EventsSectionItemView: View {
//    let event: Event

    var body: some View {
        VStack {
            HStack(){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("액션")
                        .accentColor(.green)
                        .font(.system(size: 14.0, weight: .bold, design: .default))
                }
                .padding(8.0)
                .frame(width: 75.0)
                .overlay(Capsule().stroke(Color.green))
                Button(action: {}) {
                    Text("로맨스")
                        .accentColor(.green)
                        .font(.system(size: 14.0, weight: .bold, design: .default))
                }
                .padding(8.0)
                .frame(width: 75.0)
                .overlay(Capsule().stroke(Color.green))
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("호러")
                        .accentColor(.green)
                        .font(.system(size: 14.0, weight: .bold, design: .default))
                }
                .padding(8.0)
                .frame(width: 75.0)
                .overlay(Capsule().stroke(Color.green))
                Button(action: {}) {
                    Text("코메디")
                        .accentColor(.green)
                        .font(.system(size: 14.0, weight: .bold, design: .default))
                }
                .padding(8.0)
                .frame(width: 75.0)
                .overlay(Capsule().stroke(Color.green))
            }
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("어린이")
                        .accentColor(.green)
                        .font(.system(size: 14.0, weight: .bold, design: .default))
                }
                .padding(8.0)
                .frame(width: 75.0)
                .overlay(Capsule().stroke(Color.green))
                Button(action: {}) {
                    Text("뮤지컬")
                        .accentColor(.green)
                        .font(.system(size: 14.0, weight: .bold, design: .default))
                }
                .padding(8.0)
                .frame(width: 75.0)
                .overlay(Capsule().stroke(Color.green))
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("애니")
                        .accentColor(.green)
                        .font(.system(size: 14.0, weight: .bold, design: .default))
                }
                .padding(8.0)
                .frame(width: 75.0)
                .overlay(Capsule().stroke(Color.green))
                Button(action: {}) {
                    Text("판타지")
                        .accentColor(.green)
                        .font(.system(size: 14.0, weight: .bold, design: .default))
                }
                .padding(8.0)
                .frame(width: 75.0)
                .overlay(Capsule().stroke(Color.green))
            }
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("예능")
                        .accentColor(.green)
                        .font(.system(size: 14.0, weight: .bold, design: .default))
                }
                .padding(8.0)
                .frame(width: 75.0)
                .overlay(Capsule().stroke(Color.green))
                Button(action: {}) {
                    Text("다큐")
                        .accentColor(.green)
                        .font(.system(size: 14.0, weight: .bold, design: .default))
                }
                .padding(8.0)
                .frame(width: 75.0)
                .overlay(Capsule().stroke(Color.green))
            }
        }
//            event.image
//                .resizable()
//                .scaledToFill()
//                .frame(height: 150.0)
//                .clipped()
//            Text(event.title)
//                .frame(maxWidth: .infinity, alignment: .leading)
//                .font(.headline)
//            Text(event.description)
//                .lineLimit(1)
//                .font(.callout)
//                .frame(maxWidth: .infinity, alignment: .topLeading)
//        }.frame(width: UIScreen.main.bounds.width - 32.0)
    }
}
}


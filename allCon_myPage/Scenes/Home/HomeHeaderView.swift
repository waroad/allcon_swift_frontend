//
//  HomeHeaderView.swift
//  Cafe
//
//  Created by Eunyeong Kim on 2021/08/15.
//

import SwiftUI

struct HomeHeaderView: View {
    @Binding var isNeedToReload: Bool

    var body: some View {
        VStack(spacing: 16.0) {
            HStack(alignment: .top) {
                Text("마이페이지")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .fixedSize(horizontal: false, vertical: true)
//                Button(action: {
//                    isNeedToReload = true
//                }, label: {
//                    Image(systemName: "arrow.2.circlepath")
//                })
                .frame(alignment: .top)
            }
//            HStack {
//                Button(action: {}) {
//                    Image(systemName: "mail")
//                        .foregroundColor(.secondary)
//                    Text("What's New")
//                        .foregroundColor(.primary)
//                        .font(.system(size: 16.0, weight: .semibold, design: .default))
//                }
//                Button(action: {}) {
//                    Image(systemName: "ticket")
//                        .foregroundColor(.secondary)
//                    Text("Coupon")
//                        .foregroundColor(.primary)
//                        .font(.system(size: 16.0, weight: .semibold, design: .default))
//                }
//                Spacer()
//                Button(action: {}) {
//                    Image(systemName: "bell")
//                        .foregroundColor(.secondary)
//                }
//            }
        }
        .padding(EdgeInsets(top: 75,leading: 16.0,bottom: 0, trailing: 16.0))
    }
}

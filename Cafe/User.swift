//
//  User.swift
//  Cafe
//
//  Created by Eunyeong Kim on 2021/08/15.
//

import Foundation

struct User {
    let username: String
    let account: String

    static let shared = User(username: "패캠", account: "fast.campus")
}

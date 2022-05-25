//
//  Movie.swift
//  Cafe
//
//  Created by 정혜인 on 2022/05/21.
//
import SwiftUI

struct Movie: Identifiable {
    let image: Image // UIImage
    let name: String

    let id = UUID()
}

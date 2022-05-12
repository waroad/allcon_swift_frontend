//
//  Event.swift
//  Cafe
//
//  Created by Eunyeong Kim on 2021/08/15.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()

    let image: Image
    let title: String
    let description: String
}

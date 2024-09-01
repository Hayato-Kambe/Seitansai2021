//
//  User.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/07/20.
//

import Foundation

struct User: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var date: String
    var description: String
}

//
//  Info.swift
//  DemoTable
//
//  Created by Erik Flores on 4/20/20.
//  Copyright © 2020 Erik Fores. All rights reserved.
//

import Foundation

struct Info: Decodable {
    let count: Int
    let pages: Int
    let next: String
    let prev: String?
}

//
//  APIResponse.swift
//  DemoTable
//
//  Created by Erik Flores on 4/20/20.
//  Copyright © 2020 Erik Fores. All rights reserved.
//

import Foundation

struct APIResponse: Decodable {
    let info: Info
    let results: [Character]
}

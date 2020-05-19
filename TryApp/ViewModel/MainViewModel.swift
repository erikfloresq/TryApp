//
//  MainViewModel.swift
//  TryApp
//
//  Created by Erik Flores on 5/19/20.
//  Copyright © 2020 PedidosYa. All rights reserved.
//

import Foundation
import Please

struct MainViewModel {

    var demoModel: DemoModel

    func getData() {
        let apiURL = URL(string: API.characters)!
        Please.getData(from: apiURL, as: APIResponse.self) { (response) in
            print("test name \(String(describing: response.results.first?.name))")
        }
    }

}


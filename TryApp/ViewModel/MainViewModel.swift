//
//  MainViewModel.swift
//  TryApp
//
//  Created by Erik Flores on 5/19/20.
//  Copyright © 2020 PedidosYa. All rights reserved.
//

import Foundation
import Please

class MainViewModel {

    private var mainModel: MainModel

    init(mainModel: MainModel) {
        self.mainModel = mainModel
    }

    var dataCount: Int {
        return mainModel.data.count
    }

    func getName(from indexPath: IndexPath) -> String {
        return mainModel.data[indexPath.row].name
    }

    func getData(completionHandler: @escaping () -> Void) {
        let apiURL = URL(string: API.characters)!
        Please.getData(from: apiURL, as: APIResponse.self) { (response) in
            self.mainModel.data = response.results
            completionHandler()
        }
    }

}


//
//  MainTableViewDataSource.swift
//  TryApp
//
//  Created by Erik Flores on 5/11/20.
//  Copyright © 2020 PedidosYa. All rights reserved.
//

import UIKit

class MainTableViewDataSource: NSObject, UITableViewDataSource {

    var demoModel : DemoModel

    init(demoModel: DemoModel) {
        self.demoModel = demoModel
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return demoModel.data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellDequeue = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath)
        guard let mainViewCell = cellDequeue as? MainTableViewCell else {
            return UITableViewCell()
        }
        mainViewCell.bind(title: "random \(indexPath.row)")
        return mainViewCell
    }
}

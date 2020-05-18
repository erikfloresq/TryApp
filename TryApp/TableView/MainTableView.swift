//
//  MainTableView.swift
//  TryApp
//
//  Created by Erik Flores on 5/11/20.
//  Copyright © 2020 PedidosYa. All rights reserved.
//

import UIKit

class MainTableView: UITableView {

    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        registerCells()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        registerCells()
    }

    func registerCells() {
        register(UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: "MainTableViewCell")
    }

}

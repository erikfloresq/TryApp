//
//  MainTableView.swift
//  TryApp
//
//  Created by Erik Flores on 5/11/20.
//  Copyright © 2020 PedidosYa. All rights reserved.
//

import UIKit

class MainTableView: UITableView {

    let mainTableViewDataSource = MainTableViewDataSource()
    let mainTableViewDelegate = MainTableViewDelegate()

    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        registerCells()
        initialize()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        registerCells()
        initialize()
    }

    func registerCells() {
        register(UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: "MainTableViewCell")
    }

    func initialize() {
        self.dataSource = mainTableViewDataSource
        self.delegate = mainTableViewDelegate
    }

}

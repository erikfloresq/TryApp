//
//  ChatViewController.swift
//  TryApp
//
//  Created by Erik Flores on 5/11/20.
//  Copyright © 2020 PedidosYa. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {

    let mainView = MainView.loadFromNib()
    var demoModel: DemoModel
    lazy var tableViewDataSource = MainTableViewDataSource(demoModel: demoModel)
    lazy var tableViewDelegate = MainTableViewDelegate()

    init(demoModel: DemoModel) {
        self.demoModel = demoModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.mainTableView.dataSource = tableViewDataSource
        mainView.mainTableView.delegate = tableViewDelegate
    }
}

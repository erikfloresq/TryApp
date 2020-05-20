//
//  MainViewController.swift
//  TryApp
//
//  Created by Erik Flores on 5/4/20.
//  Copyright © 2020 PedidosYa. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    let mainView = MainView.loadFromNib()
    var mainModel = MainModel()
    lazy var mainViewModel: MainViewModel = MainViewModel(mainModel: mainModel)
    lazy var tableViewDataSource = MainTableViewDataSource(mainViewModel: mainViewModel)
    lazy var tableViewDelegate = MainTableViewDelegate()

    override func loadView() {
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Try App"
        navigationController?.navigationBar.prefersLargeTitles =  true
        mainView.mainTableView.dataSource = tableViewDataSource
        mainView.mainTableView.delegate = tableViewDelegate
        mainViewModel.getData {
            DispatchQueue.main.async {
                self.mainView.mainTableView.reloadData()
            }
        }
    }

}

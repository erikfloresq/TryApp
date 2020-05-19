//
//  MainViewController.swift
//  TryApp
//
//  Created by Erik Flores on 5/14/20.
//  Copyright © 2020 PedidosYa. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    let mainView = MainView.loadFromNib()
    var demoModel = DemoModel()
    lazy var demoViewModel: MainViewModel = MainViewModel(demoModel: demoModel)

    override func loadView() {
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Try App"
        navigationController?.navigationBar.prefersLargeTitles =  true
        demoViewModel.getData()
    }

}

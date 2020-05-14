//
//  MainView.swift
//  TryApp
//
//  Created by Erik Flores on 5/11/20.
//  Copyright © 2020 PedidosYa. All rights reserved.
//

import UIKit

class MainView: UIView {

    @IBOutlet weak var mainTableView: MainTableView!

    static func loadFromNib() -> MainView {
        let nib = UINib(nibName: "MainView", bundle: nil)
        let instance = nib.instantiate(withOwner: self, options: nil)
        let mainView = instance.first as! MainView
        return mainView
    }

}

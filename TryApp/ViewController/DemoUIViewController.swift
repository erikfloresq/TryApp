//
//  DemoUIViewController.swift
//  TryApp
//
//  Created by Erik Flores on 5/21/20.
//  Copyright © 2020 PedidosYa. All rights reserved.
//

import UIKit

class DemoUIViewController: UIViewController {

    let buttonActions = ButtonActions()

    @IBOutlet weak var demoButton: UIButton! {
        didSet {
            demoButton.setTitle("Send Message", for: .normal)
            demoButton.addTarget(buttonActions, action: #selector(buttonActions.showMessage), for: .touchUpInside)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

//
//  MainViewController.swift
//  TryApp
//
//  Created by Erik Flores on 5/4/20.
//  Copyright © 2020 PedidosYa. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var chatContainer: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadChatViewController()
    }

    func loadChatViewController() {
        let chatVC = ChatViewController()
        addChild(chatVC)
        chatVC.view.frame = chatContainer.bounds
        chatContainer.addSubview(chatVC.view)
        chatVC.didMove(toParent: self)
    }

}

//
//  UIView.swift
//  TryApp
//
//  Created by Erik Flores on 5/11/20.
//  Copyright © 2020 PedidosYa. All rights reserved.
//

import UIKit

// UIView extension for constraints

extension UIView {
    func match(to nextView: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        let top = self.topAnchor.constraint(equalTo: nextView.topAnchor)
        let bottom = self.bottomAnchor.constraint(equalTo: nextView.bottomAnchor)
        let leading = self.leadingAnchor.constraint(equalTo: nextView.leadingAnchor)
        let trailing = self.trailingAnchor.constraint(equalTo: nextView.trailingAnchor)
        NSLayoutConstraint.activate([top, bottom, leading, trailing])
    }

    func center(to nextView: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        let centerX = self.centerXAnchor.constraint(equalTo: nextView.centerXAnchor)
        let centerY = self.centerYAnchor.constraint(equalTo: nextView.centerYAnchor)
        NSLayoutConstraint.activate([centerX, centerY])
    }
}

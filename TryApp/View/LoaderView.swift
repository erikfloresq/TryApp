//
//  LoaderView.swift
//  TryApp
//
//  Created by Erik Flores on 5/11/20.
//  Copyright © 2020 PedidosYa. All rights reserved.
//

import UIKit

class LoaderView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)

    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    func addActivity() {
        let activity = UIActivityIndicatorView(style: .medium)
        activity.startAnimating()
        activity.transform = CGAffineTransform(scaleX: 0, y: 0)
        activity.alpha = 0
        addSubview(activity)
        activity.center(to: self)
        self.addInAnimation(to: activity)
    }

    func addInAnimation(to view: UIView) {
        let inAnimator = UIViewPropertyAnimator(duration: 1, dampingRatio: 0.3)
        inAnimator.addAnimations {
            view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            view.alpha = 1
        }
        inAnimator.startAnimation()
    }

    func addOutAnimation(to view: UIView) {
        let outAnimator = UIViewPropertyAnimator(duration: 2, dampingRatio: 0.3)
        outAnimator.addAnimations {
            view.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            view.alpha = 0
        }
        outAnimator.startAnimation()
    }

}

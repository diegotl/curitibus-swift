//
//  LoginViewController.swift
//  CuritiBus
//
//  Created by Diego Trevisan Lara on 02/02/18.
//  Copyright © 2018 Diego Trevisan Lara. All rights reserved.
//

import UIKit
import TinyConstraints

class LoginViewController: UIViewController, ILoginView {
    
    @IBOutlet private weak var gradientView: UIView!

    // TODO: injetar
    var configurator: ILoginConfigurator! = LoginConfigurator()
    var presenter: ILoginPresenter!

    // MARK: - View

    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(self)
        
        setupUI()
    }
    
    func setupUI() {
        let gradient = CAGradientLayer()
        gradient.frame = gradientView.bounds
        gradient.colors = [UIColor.clear.cgColor, UIColor.black.withAlphaComponent(0.9).cgColor]
        gradientView.layer.addSublayer(gradient)
    }

}

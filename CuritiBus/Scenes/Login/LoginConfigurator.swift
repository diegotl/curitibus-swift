//
//  LoginConfigurator.swift
//  CuritiBus
//
//  Created by Diego Trevisan Lara on 08/09/19.
//  Copyright © 2019 Diego Trevisan Lara. All rights reserved.
//

protocol ILoginConfigurator {
    func configure(_ viewController: LoginViewController)
}

struct LoginConfigurator: ILoginConfigurator {
    
    func configure(_ viewController: LoginViewController) {
        let useCaseFactory = UseCaseFactory()
        let routerFactory = RouterFactory(navigationController: viewController.navigationController)
        
        viewController.presenter = LoginPresenter(view: viewController, useCaseFactory: useCaseFactory, routerFactory: routerFactory)
    }
    
}

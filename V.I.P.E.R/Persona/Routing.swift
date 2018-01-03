//
//  Router.swift
//  V.I.P.E.R
//
//  Created by David on 30/12/2017.
//  Copyright © 2017 David. All rights reserved.
//

import UIKit

class PersonaRouting {
    let vc:TableViewController = TableViewController()
    let presenter = PersonaPresenter()
    let interactor = PersonaInteractor()
    var navigationController: UINavigationController?
    
    init() {
        vc.presenter = presenter
        presenter.view = vc
        presenter.interactor = interactor
        presenter.routing = self
        interactor.presenter = presenter
        navigationController = UINavigationController(rootViewController: vc)
    }
}

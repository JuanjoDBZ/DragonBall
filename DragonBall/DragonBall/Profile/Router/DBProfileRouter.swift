//
//  DBProfileRouter.swift
//  DragonBall
//
//  Created by Juan Esquivel on 09/08/21.
//  
//

import Foundation
import UIKit

class DBProfileRouter {
    public var view: DBProfileVC
    private var presenter: DBProfilePresenter
    private var interactor: DBProfileInteractor
    init() {
        self.view = DBProfileVC()
        self.presenter = DBProfilePresenter()
        self.interactor = DBProfileInteractor()
        view.presenter = self.presenter
        presenter.view = self.view
        presenter.interactor = self.interactor
        presenter.router = self
        interactor.presenter = self.presenter
    }
}
extension DBProfileRouter: DBProfileRouterProtocol {
    func goToLogin() {
        let landingVC = DBLandingScreenRouter().view
        self.view.navigationController?.pushViewController(landingVC, animated: true)
    }
}


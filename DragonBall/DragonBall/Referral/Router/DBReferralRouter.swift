//
//  DBReferralRouter.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation
import UIKit

class DBReferralRouter {
    public var view: DBReferralVC
    private var presenter: DBReferralPresenter
    private var interactor: DBReferralInteractor
    init() {
        self.view = DBReferralVC()
        self.presenter = DBReferralPresenter()
        self.interactor = DBReferralInteractor()
        view.presenter = self.presenter
        presenter.view = self.view
        presenter.interactor = self.interactor
        presenter.router = self
        interactor.presenter = self.presenter
    }
}
extension DBReferralRouter: DBReferralRouterProtocol {
    /* Para mostrar una nueva pantalla con navigation controller.
    func showNewView() {
        Crea una instancia del router de la vista que quieres mostrar
        let newView = NewViewRouter(in: window)
        newView.showView()
    }*/
}


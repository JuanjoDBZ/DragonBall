//
//  DBShippingRouter.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation
import UIKit

class DBShippingRouter {
    public var view: DBShippingVC
    private var presenter: DBShippingPresenter
    private var interactor: DBShippingInteractor
    init() {
        self.view = DBShippingVC()
        self.presenter = DBShippingPresenter()
        self.interactor = DBShippingInteractor()
        view.presenter = self.presenter
        presenter.view = self.view
        presenter.interactor = self.interactor
        presenter.router = self
        interactor.presenter = self.presenter
    }
}
extension DBShippingRouter: DBShippingRouterProtocol {
    /* Para mostrar una nueva pantalla con navigation controller.
    func showNewView() {
        Crea una instancia del router de la vista que quieres mostrar
        let newView = NewViewRouter(in: window)
        newView.showView()
    }*/
}


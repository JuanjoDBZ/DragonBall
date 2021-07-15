//
//  DBQuotationRouter.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation
import UIKit

class DBQuotationRouter {
    public var view: DBQuotationVC
    private var presenter: DBQuotationPresenter
    private var interactor: DBQuotationInteractor
    private var window: UIWindow?
    init() {
        self.view = DBQuotationVC()
        self.presenter = DBQuotationPresenter()
        self.interactor = DBQuotationInteractor()
        view.presenter = self.presenter
        presenter.view = self.view
        presenter.interactor = self.interactor
        presenter.router = self
        interactor.presenter = self.presenter
    }
}
extension DBQuotationRouter: DBQuotationRouterProtocol {
    /* Para mostrar una nueva pantalla con navigation controller.
    func showNewView() {
        Crea una instancia del router de la vista que quieres mostrar
        let newView = NewViewRouter(in: window)
        newView.showView()
    }*/
}


//
//  DBSalesRouter.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation
import UIKit

class DBSalesRouter {
    public var view: DBSalesVC
    private var presenter: DBSalesPresenter
    private var interactor: DBSalesInteractor
    init() {
        self.view = DBSalesVC()
        self.presenter = DBSalesPresenter()
        self.interactor = DBSalesInteractor()
        view.presenter = self.presenter
        presenter.view = self.view
        presenter.interactor = self.interactor
        presenter.router = self
        interactor.presenter = self.presenter
    }

}
extension DBSalesRouter: DBSalesRouterProtocol {
    /* Para mostrar una nueva pantalla con navigation controller.
    func showNewView() {
        Crea una instancia del router de la vista que quieres mostrar
        let newView = NewViewRouter(in: window)
        newView.showView()
    }*/
}


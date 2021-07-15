//
//  DBWarehouseRouter.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation
import UIKit

class DBWarehouseRouter {
    public var view: DBWarehouseVC
    private var presenter: DBWarehousePresenter
    private var interactor: DBWarehouseInteractor
    init() {
        self.view = DBWarehouseVC()
        self.presenter = DBWarehousePresenter()
        self.interactor = DBWarehouseInteractor()
        view.presenter = self.presenter
        presenter.view = self.view
        presenter.interactor = self.interactor
        presenter.router = self
        interactor.presenter = self.presenter
    }
}
extension DBWarehouseRouter: DBWarehouseRouterProtocol {
    /* Para mostrar una nueva pantalla con navigation controller.
    func showNewView() {
        Crea una instancia del router de la vista que quieres mostrar
        let newView = NewViewRouter(in: window)
        newView.showView()
    }*/
}


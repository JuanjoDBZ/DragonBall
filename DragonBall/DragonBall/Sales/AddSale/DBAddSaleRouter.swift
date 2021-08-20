//
//  DBAddSaleRouter.swift
//  DragonBall
//
//  Created by Juan Esquivel on 10/08/21.
//  
//

import Foundation
import UIKit

class DBAddSaleRouter {
    private var view: DBAddSaleVC
    private var presenter: DBAddSalePresenter
    private var interactor: DBAddSaleInteractor
    private var window: UIWindow?
    init(in window: UIWindow?) {
        self.view = DBAddSaleVC()
        self.presenter = DBAddSalePresenter()
        self.interactor = DBAddSaleInteractor()
        view.presenter = self.presenter
        presenter.view = self.view
        presenter.interactor = self.interactor
        presenter.router = self
        interactor.presenter = self.presenter
        self.window = window
    }
    func showView() {
        window?.rootViewController = UINavigationController(rootViewController: view)
        window?.makeKeyAndVisible()
    }
}
extension DBAddSaleRouter: DBAddSaleRouterProtocol {
    /* Para mostrar una nueva pantalla con navigation controller.
    func showNewView() {
        Crea una instancia del router de la vista que quieres mostrar
        let newView = NewViewRouter(in: window)
        newView.showView()
    }*/
}


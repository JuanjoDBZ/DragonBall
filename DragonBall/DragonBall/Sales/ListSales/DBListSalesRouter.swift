//
//  DBListSalesRouter.swift
//  DragonBall
//
//  Created by Juan Esquivel on 10/08/21.
//  
//

import Foundation
import UIKit

class DBListSalesRouter {
    private var view: DBListSalesVC
    private var presenter: DBListSalesPresenter
    private var interactor: DBListSalesInteractor
    private var window: UIWindow?
    init(in window: UIWindow?) {
        self.view = DBListSalesVC()
        self.presenter = DBListSalesPresenter()
        self.interactor = DBListSalesInteractor()
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
extension DBListSalesRouter: DBListSalesRouterProtocol {
    /* Para mostrar una nueva pantalla con navigation controller.
    func showNewView() {
        Crea una instancia del router de la vista que quieres mostrar
        let newView = NewViewRouter(in: window)
        newView.showView()
    }*/
}


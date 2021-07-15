//
//  DBHomeRouter.swift
//  DragonBall
//
//  Created by Juan Esquivel on 14/07/21.
//  
//

import Foundation
import UIKit

class DBHomeRouter {
    public var view: DBHomeVC
    private var presenter: DBHomePresenter
    private var interactor: DBHomeInteractor
    init() {
        self.view = DBHomeVC()
        self.presenter = DBHomePresenter()
        self.interactor = DBHomeInteractor()
        view.presenter = self.presenter
        presenter.view = self.view
        presenter.interactor = self.interactor
        presenter.router = self
        interactor.presenter = self.presenter
    }
}
extension DBHomeRouter: DBHomeRouterProtocol {
    /* Para mostrar una nueva pantalla con navigation controller.
    func showNewView() {
        Crea una instancia del router de la vista que quieres mostrar
        let newView = NewViewRouter(in: window)
        newView.showView()
    }*/
}


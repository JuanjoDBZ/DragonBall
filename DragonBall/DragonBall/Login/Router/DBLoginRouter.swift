//
//  DBLoginRouter.swift
//  DB
//
//  Created by Juan Esquivel on 28/06/21.
//  
//
import Foundation
import UIKit

class DBLoginRouter {
    public var view: DBLoginVC
    private var presenter: DBLoginPresenter
    private var interactor: DBLoginInteractor
    init() {
        self.view = DBLoginVC()
        self.presenter = DBLoginPresenter()
        self.interactor = DBLoginInteractor()
        view.presenter = self.presenter
        presenter.view = self.view
        presenter.interactor = self.interactor
        presenter.router = self
        interactor.presenter = self.presenter
    }
}
extension DBLoginRouter: DBLoginRouterProtocol {
    func goToHome() {
        let homeVC = DBHomeRouter().view
        self.view.navigationController?.pushViewController(homeVC, animated: true)
    }
}


//
//  DBLandingScreenRouter.swift
//  DB
//
//  Created by Juan Esquivel on 29/06/21.
//  
//
import Foundation
import UIKit
class DBLandingScreenRouter {
    public var view: DBLandingScreenVC
    private var presenter: DBLandingScreenPresenter
    private var interactor: DBLandingScreenInteractor
    init() {
        self.view = DBLandingScreenVC()
        self.presenter = DBLandingScreenPresenter()
        self.interactor = DBLandingScreenInteractor()
        view.presenter = self.presenter
        presenter.view = self.view
        presenter.interactor = self.interactor
        presenter.router = self
        interactor.presenter = self.presenter
    }
}
extension DBLandingScreenRouter: DBLandingScreenRouterProtocol {
    func showDBLoginVC() {
        let loginVC = DBLoginRouter().view
        self.view.navigationController?.pushViewController(loginVC, animated: true)
    }
    func showDBSignUp() {
        let SignUpVC = DBSignUpRouter().view
        self.view.navigationController?.pushViewController(SignUpVC, animated: true)
    }
}

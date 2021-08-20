//
//  DBSignUpRouter.swift
//  DB
//
//  Created by Juan Esquivel on 28/06/21.
//  
//

import Foundation
import UIKit

class DBSignUpRouter {
    public var view: DBSignUpVC
    private var presenter: DBSignUpPresenter
    private var interactor: DBSignUpInteractor
    init() {
        self.view = DBSignUpVC()
        self.presenter = DBSignUpPresenter()
        self.interactor = DBSignUpInteractor()
        view.presenter = self.presenter
        presenter.view = self.view
        presenter.interactor = self.interactor
        presenter.router = self
        interactor.presenter = self.presenter
    }
}
extension DBSignUpRouter: DBSignUpRouterProtocol {
    func goToHome() {
        let homeVC = DBHomeRouter().view
        self.view.navigationController?.pushViewController(homeVC, animated: true)
    }
}


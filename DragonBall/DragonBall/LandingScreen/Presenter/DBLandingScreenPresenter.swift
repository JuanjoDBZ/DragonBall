//
//  DBLandingScreenPresenter.swift
//  DB
//
//  Created by Juan Esquivel on 29/06/21.
//  
//

import Foundation

class DBLandingScreenPresenter {
    var view: DBLandingScreenViewProtocol?
    var interactor: DBLandingScreenInteractorInputProtocol?
    var router: DBLandingScreenRouterProtocol?
}
extension DBLandingScreenPresenter: DBLandingScreenPresenterProtocol {
    func showDBLoginVC() {
        router?.showDBLoginVC()
    }
    func showDBSignUp() {
        router?.showDBSignUp()
    }
    
}
extension DBLandingScreenPresenter: DBLandingScreenInteractorOutputProtocol {
}

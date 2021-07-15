//
//  DBReferralPresenter.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation

class DBReferralPresenter {
    
    var view: DBReferralViewProtocol?
    var interactor: DBReferralInteractorInputProtocol?
    var router: DBReferralRouterProtocol?
    
}
extension DBReferralPresenter: DBReferralPresenterProtocol {
    //Uso y nombre opcional
    func getInitialInfo() {
        interactor?.processInfo()
    }
}
extension DBReferralPresenter: DBReferralInteractorOutputProtocol {
    //Uso y nombre opcional
    func receiveData() {
        view?.loadInfo()
    }
}

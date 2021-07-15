//
//  DBShippingPresenter.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation

class DBShippingPresenter {
    
    var view: DBShippingViewProtocol?
    var interactor: DBShippingInteractorInputProtocol?
    var router: DBShippingRouterProtocol?
    
}
extension DBShippingPresenter: DBShippingPresenterProtocol {
    //Uso y nombre opcional
    func getInitialInfo() {
        interactor?.processInfo()
    }
}
extension DBShippingPresenter: DBShippingInteractorOutputProtocol {
    //Uso y nombre opcional
    func receiveData() {
        view?.loadInfo()
    }
}

//
//  DBQuotationPresenter.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation

class DBQuotationPresenter {
    
    var view: DBQuotationViewProtocol?
    var interactor: DBQuotationInteractorInputProtocol?
    var router: DBQuotationRouterProtocol?
    
}
extension DBQuotationPresenter: DBQuotationPresenterProtocol {
    //Uso y nombre opcional
    func getInitialInfo() {
        interactor?.processInfo()
    }
}
extension DBQuotationPresenter: DBQuotationInteractorOutputProtocol {
    //Uso y nombre opcional
    func receiveData() {
        view?.loadInfo()
    }
}

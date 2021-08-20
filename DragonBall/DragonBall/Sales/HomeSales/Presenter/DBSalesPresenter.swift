//
//  DBSalesPresenter.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation

class DBSalesPresenter {
    
    var view: DBSalesViewProtocol?
    var interactor: DBSalesInteractorInputProtocol?
    var router: DBSalesRouterProtocol?
    
}
extension DBSalesPresenter: DBSalesPresenterProtocol {
    //Uso y nombre opcional
    func getInitialInfo() {
        interactor?.processInfo()
    }
}
extension DBSalesPresenter: DBSalesInteractorOutputProtocol {
    //Uso y nombre opcional
    func receiveData() {
        view?.loadInfo()
    }
}

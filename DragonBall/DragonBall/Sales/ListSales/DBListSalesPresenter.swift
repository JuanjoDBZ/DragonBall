//
//  DBListSalesPresenter.swift
//  DragonBall
//
//  Created by Juan Esquivel on 10/08/21.
//  
//

import Foundation

class DBListSalesPresenter {
    
    var view: DBListSalesViewProtocol?
    var interactor: DBListSalesInteractorInputProtocol?
    var router: DBListSalesRouterProtocol?
    
}
extension DBListSalesPresenter: DBListSalesPresenterProtocol {
    //Uso y nombre opcional
    func getInitialInfo() {
        interactor?.processInfo()
    }
}
extension DBListSalesPresenter: DBListSalesInteractorOutputProtocol {
    //Uso y nombre opcional
    func receiveData() {
        view?.loadInfo()
    }
}

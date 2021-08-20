//
//  DBAddSalePresenter.swift
//  DragonBall
//
//  Created by Juan Esquivel on 10/08/21.
//  
//

import Foundation

class DBAddSalePresenter {
    
    var view: DBAddSaleViewProtocol?
    var interactor: DBAddSaleInteractorInputProtocol?
    var router: DBAddSaleRouterProtocol?
    
}
extension DBAddSalePresenter: DBAddSalePresenterProtocol {
    //Uso y nombre opcional
    func getInitialInfo() {
        interactor?.processInfo()
    }
}
extension DBAddSalePresenter: DBAddSaleInteractorOutputProtocol {
    //Uso y nombre opcional
    func receiveData() {
        view?.loadInfo()
    }
}

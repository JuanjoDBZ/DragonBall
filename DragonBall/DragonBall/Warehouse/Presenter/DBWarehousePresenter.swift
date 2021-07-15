//
//  DBWarehousePresenter.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation

class DBWarehousePresenter {
    
    var view: DBWarehouseViewProtocol?
    var interactor: DBWarehouseInteractorInputProtocol?
    var router: DBWarehouseRouterProtocol?
    
}
extension DBWarehousePresenter: DBWarehousePresenterProtocol {
    //Uso y nombre opcional
    func getInitialInfo() {
        interactor?.processInfo()
    }
}
extension DBWarehousePresenter: DBWarehouseInteractorOutputProtocol {
    //Uso y nombre opcional
    func receiveData() {
        view?.loadInfo()
    }
}

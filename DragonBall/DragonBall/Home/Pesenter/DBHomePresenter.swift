//
//  DBHomePresenter.swift
//  DragonBall
//
//  Created by Juan Esquivel on 14/07/21.
//  
//

import Foundation

class DBHomePresenter {
    
    var view: DBHomeViewProtocol?
    var interactor: DBHomeInteractorInputProtocol?
    var router: DBHomeRouterProtocol?
    
}
extension DBHomePresenter: DBHomePresenterProtocol {
    //Uso y nombre opcional
    func getInitialInfo() {
        interactor?.processInfo()
    }
    func goToSales() {
        router?.goToSales()
    }
    func goToReferral() {
        router?.goToReferral()
    }
    func goToWarehouse() {
        router?.goToWarehouse()
    }
    func goToQuotation() {
        router?.goToQuotation()
    }
    func goToShipping() {
        router?.goToShipping()
    }
    func goToProfile() {
        router?.goToProfile()
    }
}
extension DBHomePresenter: DBHomeInteractorOutputProtocol {
    //Uso y nombre opcional
    func receiveData() {
        view?.loadInfo()
    }
}

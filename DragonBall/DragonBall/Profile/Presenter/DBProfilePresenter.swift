//
//  DBProfilePresenter.swift
//  DragonBall
//
//  Created by Juan Esquivel on 09/08/21.
//  
//

import Foundation

class DBProfilePresenter {
    
    var view: DBProfileViewProtocol?
    var interactor: DBProfileInteractorInputProtocol?
    var router: DBProfileRouterProtocol?
    
}
extension DBProfilePresenter: DBProfilePresenterProtocol {
    //Uso y nombre opcional
    func getInitialInfo() {
        interactor?.processInfo()
    }
    func goToLogin() {
        router?.goToLogin()
    }
}
extension DBProfilePresenter: DBProfileInteractorOutputProtocol {
    //Uso y nombre opcional
    func receiveData() {
    }
}

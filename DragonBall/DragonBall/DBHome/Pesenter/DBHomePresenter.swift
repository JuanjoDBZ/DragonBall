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
}
extension DBHomePresenter: DBHomeInteractorOutputProtocol {
    //Uso y nombre opcional
    func receiveData() {
        view?.loadInfo()
    }
}

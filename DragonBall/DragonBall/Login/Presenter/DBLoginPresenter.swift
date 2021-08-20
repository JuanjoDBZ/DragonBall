//
//  DBLoginPresenter.swift
//  DB
//
//  Created by Juan Esquivel on 28/06/21.
//  
//
import Foundation
class DBLoginPresenter {
    
    var view: DBLoginViewProtocol?
    var interactor: DBLoginInteractorInputProtocol?
    var router: DBLoginRouterProtocol?
    
}
extension DBLoginPresenter: DBLoginPresenterProtocol {
    func goToHome() {
        router?.goToHome()
    }
}
extension DBLoginPresenter: DBLoginInteractorOutputProtocol {
}

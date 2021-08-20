//
//  DBSignUpPresenter.swift
//  DB
//
//  Created by Juan Esquivel on 28/06/21.
//  
//
import Foundation

class DBSignUpPresenter {
    var view: DBSignUpViewProtocol?
    var interactor: DBSignUpInteractorInputProtocol?
    var router: DBSignUpRouterProtocol?
}
extension DBSignUpPresenter: DBSignUpPresenterProtocol {
    func createNewUserPresenter(newUser: DataUserRegister) {
        interactor?.createNewUserInteractor(newUser: newUser)
    }
}
extension DBSignUpPresenter: DBSignUpInteractorOutputProtocol {
    func resulsetSuccess(resulset: Bool, message: String) {
        view?.showPopup(isSuccess: resulset, message: message)
        router?.goToHome()
    }
    
    func resulsetError(resulset: Bool, message: String) {
        view?.showPopup(isSuccess: resulset, message: message)
    }
}


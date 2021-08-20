//
//  DBSignUpProtocol.swift
//  DB
//
//  Created by Juan Esquivel on 28/06/21.
//  
//

import Foundation
import UIKit
/// Protocolo que define los métodos y atributos para el view de DBSignUp
protocol DBSignUpViewProtocol {
    // PRESENTER -> VIEW
    func showPopup(isSuccess: Bool, message: String)
}
/// Protocolo que define los métodos y atributos para el routing de DBSignUp
protocol DBSignUpRouterProtocol {
    // PRESENTER -> ROUTING
    func goToHome()
}
/// Protocolo que define los métodos y atributos para el Presenter de DBSignUp
protocol DBSignUpPresenterProtocol {
    // VIEW -> PRESENTER
    func createNewUserPresenter(newUser: DataUserRegister)
}
/// Protocolo que define los métodos y atributos para el Interactor de DBSignUp
protocol DBSignUpInteractorInputProtocol {
    // PRESENTER -> INTERACTOR
    func createNewUserInteractor(newUser: DataUserRegister)
}
/// Protocolo que define los métodos y atributos para el Interactor de DBSignUp
protocol DBSignUpInteractorOutputProtocol {
    // INTERACTOR -> PRESENTER
    func resulsetSuccess(resulset: Bool, message: String)
    func resulsetError(resulset: Bool, message: String)
}


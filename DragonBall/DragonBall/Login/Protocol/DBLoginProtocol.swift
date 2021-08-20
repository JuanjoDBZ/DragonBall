//
//  DBLoginProtocol.swift
//  DB
//
//  Created by Juan Esquivel on 28/06/21.
//  
//

import Foundation
import UIKit
/// Protocolo que define los métodos y atributos para el view de DBLogin
protocol DBLoginViewProtocol {
    // PRESENTER -> VIEW
}
/// Protocolo que define los métodos y atributos para el routing de DBLogin
protocol DBLoginRouterProtocol {
    // PRESENTER -> ROUTING
    func goToHome()
}
/// Protocolo que define los métodos y atributos para el Presenter de DBLogin
protocol DBLoginPresenterProtocol {
    // VIEW -> PRESENTER
    func goToHome()
}
/// Protocolo que define los métodos y atributos para el Interactor de DBLogin
protocol DBLoginInteractorInputProtocol {
    // PRESENTER -> INTERACTOR
}
/// Protocolo que define los métodos y atributos para el Interactor de DBLogin
protocol DBLoginInteractorOutputProtocol {
    // INTERACTOR -> PRESENTER
}


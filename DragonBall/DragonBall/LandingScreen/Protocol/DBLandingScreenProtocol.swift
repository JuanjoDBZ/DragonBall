//
//  DBLandingScreenProtocol.swift
//  DB
//
//  Created by Juan Esquivel on 29/06/21.
//  
//

import Foundation
import UIKit
/// Protocolo que define los métodos y atributos para el view de DBLandingScreen
protocol DBLandingScreenViewProtocol {
    // PRESENTER -> VIEW
}
/// Protocolo que define los métodos y atributos para el routing de DBLandingScreen
protocol DBLandingScreenRouterProtocol {
    // PRESENTER -> ROUTING
    func showDBLoginVC()
    func showDBSignUp()
}
/// Protocolo que define los métodos y atributos para el Presenter de DBLandingScreen
protocol DBLandingScreenPresenterProtocol {
    // VIEW -> PRESENTER
    func showDBLoginVC()
    func showDBSignUp()
}
/// Protocolo que define los métodos y atributos para el Interactor de DBLandingScreen
protocol DBLandingScreenInteractorInputProtocol {
    // PRESENTER -> INTERACTOR
}
/// Protocolo que define los métodos y atributos para el Interactor de DBLandingScreen
protocol DBLandingScreenInteractorOutputProtocol {
    // INTERACTOR -> PRESENTER
}


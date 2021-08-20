//
//  DBProfileProtocol.swift
//  DragonBall
//
//  Created by Juan Esquivel on 09/08/21.
//  
//

import Foundation
import UIKit
/// Protocolo que define los métodos y atributos para el view de DBProfile
protocol DBProfileViewProtocol {
    // PRESENTER -> VIEW
}
/// Protocolo que define los métodos y atributos para el routing de DBProfile
protocol DBProfileRouterProtocol {
    // PRESENTER -> ROUTING
    //func showNewView()
    func goToLogin()
}
/// Protocolo que define los métodos y atributos para el Presenter de DBProfile
protocol DBProfilePresenterProtocol {
    // VIEW -> PRESENTER
    func getInitialInfo()
    func goToLogin()
}
/// Protocolo que define los métodos y atributos para el Interactor de DBProfile
protocol DBProfileInteractorInputProtocol {
    // PRESENTER -> INTERACTOR
    func processInfo()
}
/// Protocolo que define los métodos y atributos para el Interactor de DBProfile
protocol DBProfileInteractorOutputProtocol {
    // INTERACTOR -> PRESENTER
    func receiveData()
}


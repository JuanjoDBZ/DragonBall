//
//  DBReferralProtocol.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation
import UIKit
/// Protocolo que define los métodos y atributos para el view de DBReferral
protocol DBReferralViewProtocol {
    // PRESENTER -> VIEW
    func loadInfo()
}
/// Protocolo que define los métodos y atributos para el routing de DBReferral
protocol DBReferralRouterProtocol {
    // PRESENTER -> ROUTING
    //func showNewView()
}
/// Protocolo que define los métodos y atributos para el Presenter de DBReferral
protocol DBReferralPresenterProtocol {
    // VIEW -> PRESENTER
    func getInitialInfo()
}
/// Protocolo que define los métodos y atributos para el Interactor de DBReferral
protocol DBReferralInteractorInputProtocol {
    // PRESENTER -> INTERACTOR
    func processInfo()
}
/// Protocolo que define los métodos y atributos para el Interactor de DBReferral
protocol DBReferralInteractorOutputProtocol {
    // INTERACTOR -> PRESENTER
    func receiveData()
}


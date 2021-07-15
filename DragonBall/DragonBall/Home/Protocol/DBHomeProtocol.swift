//
//  DBHomeProtocol.swift
//  DragonBall
//
//  Created by Juan Esquivel on 14/07/21.
//  
//

import Foundation
import UIKit
/// Protocolo que define los métodos y atributos para el view de DBHome
protocol DBHomeViewProtocol {
    // PRESENTER -> VIEW
    func loadInfo()
}
/// Protocolo que define los métodos y atributos para el routing de DBHome
protocol DBHomeRouterProtocol {
    // PRESENTER -> ROUTING
    //func showNewView()
    func goToSales()
    func goToReferral()
    func goToWarehouse()
    func goToQuotation()
    func goToShipping()
}
/// Protocolo que define los métodos y atributos para el Presenter de DBHome
protocol DBHomePresenterProtocol {
    // VIEW -> PRESENTER
    func getInitialInfo()
    func goToSales()
    func goToReferral()
    func goToWarehouse()
    func goToQuotation()
    func goToShipping()
}
/// Protocolo que define los métodos y atributos para el Interactor de DBHome
protocol DBHomeInteractorInputProtocol {
    // PRESENTER -> INTERACTOR
    func processInfo()
}
/// Protocolo que define los métodos y atributos para el Interactor de DBHome
protocol DBHomeInteractorOutputProtocol {
    // INTERACTOR -> PRESENTER
    func receiveData()
}


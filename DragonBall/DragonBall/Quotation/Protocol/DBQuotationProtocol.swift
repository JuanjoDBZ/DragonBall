//
//  DBQuotationProtocol.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation
import UIKit
/// Protocolo que define los métodos y atributos para el view de DBQuotation
protocol DBQuotationViewProtocol {
    // PRESENTER -> VIEW
    func loadInfo()
}
/// Protocolo que define los métodos y atributos para el routing de DBQuotation
protocol DBQuotationRouterProtocol {
    // PRESENTER -> ROUTING
    //func showNewView()
}
/// Protocolo que define los métodos y atributos para el Presenter de DBQuotation
protocol DBQuotationPresenterProtocol {
    // VIEW -> PRESENTER
    func getInitialInfo()
}
/// Protocolo que define los métodos y atributos para el Interactor de DBQuotation
protocol DBQuotationInteractorInputProtocol {
    // PRESENTER -> INTERACTOR
    func processInfo()
}
/// Protocolo que define los métodos y atributos para el Interactor de DBQuotation
protocol DBQuotationInteractorOutputProtocol {
    // INTERACTOR -> PRESENTER
    func receiveData()
}


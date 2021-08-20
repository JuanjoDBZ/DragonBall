//
//  DBSalesProtocol.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation
import UIKit
/// Protocolo que define los métodos y atributos para el view de DBSales
protocol DBSalesViewProtocol {
    // PRESENTER -> VIEW
    func loadInfo()
}
/// Protocolo que define los métodos y atributos para el routing de DBSales
protocol DBSalesRouterProtocol {
    // PRESENTER -> ROUTING
    //func showNewView()
}
/// Protocolo que define los métodos y atributos para el Presenter de DBSales
protocol DBSalesPresenterProtocol {
    // VIEW -> PRESENTER
    func getInitialInfo()
}
/// Protocolo que define los métodos y atributos para el Interactor de DBSales
protocol DBSalesInteractorInputProtocol {
    // PRESENTER -> INTERACTOR
    func processInfo()
}
/// Protocolo que define los métodos y atributos para el Interactor de DBSales
protocol DBSalesInteractorOutputProtocol {
    // INTERACTOR -> PRESENTER
    func receiveData()
}


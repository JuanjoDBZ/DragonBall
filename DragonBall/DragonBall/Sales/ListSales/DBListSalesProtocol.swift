//
//  DBListSalesProtocol.swift
//  DragonBall
//
//  Created by Juan Esquivel on 10/08/21.
//  
//

import Foundation
import UIKit
/// Protocolo que define los métodos y atributos para el view de DBListSales
protocol DBListSalesViewProtocol {
    // PRESENTER -> VIEW
    func loadInfo()
}
/// Protocolo que define los métodos y atributos para el routing de DBListSales
protocol DBListSalesRouterProtocol {
    // PRESENTER -> ROUTING
    //func showNewView()
}
/// Protocolo que define los métodos y atributos para el Presenter de DBListSales
protocol DBListSalesPresenterProtocol {
    // VIEW -> PRESENTER
    func getInitialInfo()
}
/// Protocolo que define los métodos y atributos para el Interactor de DBListSales
protocol DBListSalesInteractorInputProtocol {
    // PRESENTER -> INTERACTOR
    func processInfo()
}
/// Protocolo que define los métodos y atributos para el Interactor de DBListSales
protocol DBListSalesInteractorOutputProtocol {
    // INTERACTOR -> PRESENTER
    func receiveData()
}


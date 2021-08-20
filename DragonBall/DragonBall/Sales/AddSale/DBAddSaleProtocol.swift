//
//  DBAddSaleProtocol.swift
//  DragonBall
//
//  Created by Juan Esquivel on 10/08/21.
//  
//

import Foundation
import UIKit
/// Protocolo que define los métodos y atributos para el view de DBAddSale
protocol DBAddSaleViewProtocol {
    // PRESENTER -> VIEW
    func loadInfo()
}
/// Protocolo que define los métodos y atributos para el routing de DBAddSale
protocol DBAddSaleRouterProtocol {
    // PRESENTER -> ROUTING
    //func showNewView()
}
/// Protocolo que define los métodos y atributos para el Presenter de DBAddSale
protocol DBAddSalePresenterProtocol {
    // VIEW -> PRESENTER
    func getInitialInfo()
}
/// Protocolo que define los métodos y atributos para el Interactor de DBAddSale
protocol DBAddSaleInteractorInputProtocol {
    // PRESENTER -> INTERACTOR
    func processInfo()
}
/// Protocolo que define los métodos y atributos para el Interactor de DBAddSale
protocol DBAddSaleInteractorOutputProtocol {
    // INTERACTOR -> PRESENTER
    func receiveData()
}


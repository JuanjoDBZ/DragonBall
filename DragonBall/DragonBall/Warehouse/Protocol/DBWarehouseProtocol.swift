//
//  DBWarehouseProtocol.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation
import UIKit
/// Protocolo que define los métodos y atributos para el view de DBWarehouse
protocol DBWarehouseViewProtocol {
    // PRESENTER -> VIEW
    func loadInfo()
}
/// Protocolo que define los métodos y atributos para el routing de DBWarehouse
protocol DBWarehouseRouterProtocol {
    // PRESENTER -> ROUTING
    //func showNewView()
}
/// Protocolo que define los métodos y atributos para el Presenter de DBWarehouse
protocol DBWarehousePresenterProtocol {
    // VIEW -> PRESENTER
    func getInitialInfo()
}
/// Protocolo que define los métodos y atributos para el Interactor de DBWarehouse
protocol DBWarehouseInteractorInputProtocol {
    // PRESENTER -> INTERACTOR
    func processInfo()
}
/// Protocolo que define los métodos y atributos para el Interactor de DBWarehouse
protocol DBWarehouseInteractorOutputProtocol {
    // INTERACTOR -> PRESENTER
    func receiveData()
}


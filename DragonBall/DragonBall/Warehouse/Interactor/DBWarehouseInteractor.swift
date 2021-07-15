//
//  DBWarehouseInteractor.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation

class DBWarehouseInteractor {
    var presenter: DBWarehouseInteractorOutputProtocol?
    
}
extension DBWarehouseInteractor: DBWarehouseInteractorInputProtocol {
    //Uso y nombre opcional
    func processInfo() {
        presenter?.receiveData()
    }
}

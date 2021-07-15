//
//  DBShippingInteractor.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation

class DBShippingInteractor {
    var presenter: DBShippingInteractorOutputProtocol?
    
}
extension DBShippingInteractor: DBShippingInteractorInputProtocol {
    //Uso y nombre opcional
    func processInfo() {
        presenter?.receiveData()
    }
}

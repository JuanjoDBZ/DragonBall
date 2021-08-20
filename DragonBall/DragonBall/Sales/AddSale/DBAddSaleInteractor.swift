//
//  DBAddSaleInteractor.swift
//  DragonBall
//
//  Created by Juan Esquivel on 10/08/21.
//  
//

import Foundation

class DBAddSaleInteractor {
    var presenter: DBAddSaleInteractorOutputProtocol?
    
}
extension DBAddSaleInteractor: DBAddSaleInteractorInputProtocol {
    //Uso y nombre opcional
    func processInfo() {
        presenter?.receiveData()
    }
}

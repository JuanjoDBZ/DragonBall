//
//  DBSalesInteractor.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation

class DBSalesInteractor {
    var presenter: DBSalesInteractorOutputProtocol?
    
}
extension DBSalesInteractor: DBSalesInteractorInputProtocol {
    //Uso y nombre opcional
    func processInfo() {
        presenter?.receiveData()
    }
}

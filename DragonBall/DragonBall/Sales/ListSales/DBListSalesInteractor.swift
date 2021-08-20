//
//  DBListSalesInteractor.swift
//  DragonBall
//
//  Created by Juan Esquivel on 10/08/21.
//  
//

import Foundation

class DBListSalesInteractor {
    var presenter: DBListSalesInteractorOutputProtocol?
    
}
extension DBListSalesInteractor: DBListSalesInteractorInputProtocol {
    //Uso y nombre opcional
    func processInfo() {
        presenter?.receiveData()
    }
}

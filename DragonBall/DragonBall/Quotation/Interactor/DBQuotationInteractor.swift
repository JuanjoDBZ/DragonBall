//
//  DBQuotationInteractor.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation

class DBQuotationInteractor {
    var presenter: DBQuotationInteractorOutputProtocol?
    
}
extension DBQuotationInteractor: DBQuotationInteractorInputProtocol {
    //Uso y nombre opcional
    func processInfo() {
        presenter?.receiveData()
    }
}

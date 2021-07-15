//
//  DBHomeInteractor.swift
//  DragonBall
//
//  Created by Juan Esquivel on 14/07/21.
//  
//

import Foundation

class DBHomeInteractor {
    var presenter: DBHomeInteractorOutputProtocol?
    
}
extension DBHomeInteractor: DBHomeInteractorInputProtocol {
    //Uso y nombre opcional
    func processInfo() {
        presenter?.receiveData()
    }
}

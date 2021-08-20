//
//  DBProfileInteractor.swift
//  DragonBall
//
//  Created by Juan Esquivel on 09/08/21.
//  
//

import Foundation

class DBProfileInteractor {
    var presenter: DBProfileInteractorOutputProtocol?
    
}
extension DBProfileInteractor: DBProfileInteractorInputProtocol {
    //Uso y nombre opcional
    func processInfo() {
        presenter?.receiveData()
    }
}

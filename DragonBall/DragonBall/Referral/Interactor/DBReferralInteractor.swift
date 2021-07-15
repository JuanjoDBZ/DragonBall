//
//  DBReferralInteractor.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation

class DBReferralInteractor {
    var presenter: DBReferralInteractorOutputProtocol?
    
}
extension DBReferralInteractor: DBReferralInteractorInputProtocol {
    //Uso y nombre opcional
    func processInfo() {
        presenter?.receiveData()
    }
}

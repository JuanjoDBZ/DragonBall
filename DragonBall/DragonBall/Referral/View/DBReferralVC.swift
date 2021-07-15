//
//  DBReferralVC.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation
import UIKit

class DBReferralVC: UIViewController {

    var presenter: DBReferralPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        //Opcional
        presenter?.getInitialInfo()
    }
}
///Protocolo para recibir datos de presenter.
extension DBReferralVC: DBReferralViewProtocol {
    func loadInfo(){
        print("Realizar acciones de repintado de la vista")
    }
}

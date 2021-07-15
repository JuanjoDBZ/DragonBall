//
//  DBHomeVC.swift
//  DragonBall
//
//  Created by Juan Esquivel on 14/07/21.
//  
//

import Foundation
import UIKit

class DBHomeVC: UIViewController {

    var presenter: DBHomePresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        //Opcional
        presenter?.getInitialInfo()
    }
}
///Protocolo para recibir datos de presenter.
extension DBHomeVC: DBHomeViewProtocol {
    func loadInfo(){
        print("Realizar acciones de repintado de la vista")
    }
}

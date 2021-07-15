//
//  DBWarehouseVC.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation
import UIKit

class DBWarehouseVC: UIViewController {

    var presenter: DBWarehousePresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        //Opcional
        presenter?.getInitialInfo()
    }
}
///Protocolo para recibir datos de presenter.
extension DBWarehouseVC: DBWarehouseViewProtocol {
    func loadInfo(){
        print("Realizar acciones de repintado de la vista")
    }
}

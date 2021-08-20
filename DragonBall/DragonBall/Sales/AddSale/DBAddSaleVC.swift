//
//  DBAddSaleVC.swift
//  DragonBall
//
//  Created by Juan Esquivel on 10/08/21.
//  
//

import Foundation
import UIKit

class DBAddSaleVC: UIViewController {

    var presenter: DBAddSalePresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        //Opcional
        presenter?.getInitialInfo()
    }
}
extension DBAddSaleVC {
    
}
///Protocolo para recibir datos de presenter.
extension DBAddSaleVC: DBAddSaleViewProtocol {
    func loadInfo(){
        print("Realizar acciones de repintado de la vista")
    }
}

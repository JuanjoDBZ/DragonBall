//
//  DBSalesVC.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation
import UIKit

class DBSalesVC: UIViewController {

    var presenter: DBSalesPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        //Opcional
        presenter?.getInitialInfo()
    }
}
///Protocolo para recibir datos de presenter.
extension DBSalesVC: DBSalesViewProtocol {
    func loadInfo(){
        print("Realizar acciones de repintado de la vista")
    }
}

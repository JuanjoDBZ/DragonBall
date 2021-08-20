//
//  DBListSalesVC.swift
//  DragonBall
//
//  Created by Juan Esquivel on 10/08/21.
//  
//

import Foundation
import UIKit

class DBListSalesVC: UIViewController {

    var presenter: DBListSalesPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        //Opcional
        presenter?.getInitialInfo()
    }
}
///Protocolo para recibir datos de presenter.
extension DBListSalesVC: DBListSalesViewProtocol {
    func loadInfo(){
        print("Realizar acciones de repintado de la vista")
    }
}

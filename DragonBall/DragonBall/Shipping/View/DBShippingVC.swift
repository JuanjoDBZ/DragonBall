//
//  DBShippingVC.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation
import UIKit

class DBShippingVC: UIViewController {

    var presenter: DBShippingPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        //Opcional
        presenter?.getInitialInfo()
    }
}
///Protocolo para recibir datos de presenter.
extension DBShippingVC: DBShippingViewProtocol {
    func loadInfo(){
        print("Realizar acciones de repintado de la vista")
    }
}

//
//  DBQuotationVC.swift
//  DragonBall
//
//  Created by Juan Esquivel on 15/07/21.
//  
//

import Foundation
import UIKit

class DBQuotationVC: UIViewController {

    var presenter: DBQuotationPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        //Opcional
        presenter?.getInitialInfo()
    }
}
///Protocolo para recibir datos de presenter.
extension DBQuotationVC: DBQuotationViewProtocol {
    func loadInfo(){
        print("Realizar acciones de repintado de la vista")
    }
}

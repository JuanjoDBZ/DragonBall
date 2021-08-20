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
        setUpView()
    }
    func setUpView() {
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        title = "A L M A C É N"
    }

}
///Protocolo para recibir datos de presenter.
extension DBWarehouseVC: DBWarehouseViewProtocol {
    func loadInfo(){
        print("Realizar acciones de repintado de la vista")
    }
}

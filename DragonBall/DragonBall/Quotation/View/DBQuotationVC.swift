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
        setUpView()
    }
    func setUpView() {
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        title = "C O T I Z A C I Ó N"
    }

}
///Protocolo para recibir datos de presenter.
extension DBQuotationVC: DBQuotationViewProtocol {
    func loadInfo(){
        print("Realizar acciones de repintado de la vista")
    }
}

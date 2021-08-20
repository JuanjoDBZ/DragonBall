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

    @IBOutlet weak var btnListSales: UIButton!
    @IBOutlet weak var btnNewSale: UIButton!
    @IBOutlet weak var btnTrash: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //Opcional
        presenter?.getInitialInfo()
        setUpView()
    }
    func setUpView() {
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        title = "V E N T A S"
        /// Formato para botones
        btnListSales.layer.cornerRadius = 20.0
        btnListSales.layer.borderWidth = 1
        btnListSales.layer.borderColor = UIColor.black.cgColor
        btnNewSale.layer.cornerRadius = 20.0
        btnNewSale.layer.borderWidth = 1
        btnNewSale.layer.borderColor = UIColor.black.cgColor
        btnTrash.layer.cornerRadius = 20.0
        btnTrash.layer.borderWidth = 1
        btnTrash.layer.borderColor = UIColor.black.cgColor
    }
}
extension DBSalesVC {
    
}
///Protocolo para recibir datos de presenter.
extension DBSalesVC: DBSalesViewProtocol {
    func loadInfo(){
        print("Realizar acciones de repintado de la vista")
    }
}

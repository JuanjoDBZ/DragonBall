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

    @IBOutlet weak var btnSales: UIButton!
    @IBOutlet weak var btnReferral: UIButton!
    @IBOutlet weak var btnWarehouse: UIButton!
    @IBOutlet weak var btnQuotation: UIButton!
    @IBOutlet weak var btnShipping: UIButton!
    var presenter: DBHomePresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        //Opcional
        presenter?.getInitialInfo()
    }
    /// Función para darle formato a la vista
    func setUpView() {
        /// Formato para el navigationController
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.8156862745, green: 0.6784313725, blue: 0.4392156863, alpha: 1)
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        title = "M E N Ú"
        /// Formato para botones
        btnSales.layer.cornerRadius = 20.0
        btnSales.layer.borderWidth = 1
        btnSales.layer.borderColor = UIColor.black.cgColor
        btnReferral.layer.cornerRadius = 20.0
        btnReferral.layer.borderWidth = 1
        btnReferral.layer.borderColor = UIColor.black.cgColor
        btnWarehouse.layer.cornerRadius = 20.0
        btnWarehouse.layer.borderWidth = 1
        btnWarehouse.layer.borderColor = UIColor.black.cgColor
        btnQuotation.layer.cornerRadius = 20.0
        btnQuotation.layer.borderWidth = 1
        btnQuotation.layer.borderColor = UIColor.black.cgColor
        btnShipping.layer.cornerRadius = 20.0
        btnShipping.layer.borderWidth = 1
        btnShipping.layer.borderColor = UIColor.black.cgColor
    }
    
    /// Acción para movernos a la pantalla de ventas.
    /// - Parameter sender: contiene la información del botón que se pulso
    @IBAction func goToSales(_ sender: UIButton) {
        presenter?.goToSales()
    }
    /// Acción para movernos a la pantalla de remisión.
    /// - Parameter sender: contiene la información del botón que se pulso
    @IBAction func goToReferral(_ sender: UIButton) {
        presenter?.goToReferral()
    }
    /// Acción para movernos a la pantalla de almacén.
    /// - Parameter sender: contiene la información del botón que se pulso
    @IBAction func goToWarehouse(_ sender: UIButton) {
        presenter?.goToWarehouse()
    }
    /// Acción para movernos a la pantalla de cotización.
    /// - Parameter sender: contiene la información del botón que se pulso
    @IBAction func goToQuotation(_ sender: UIButton) {
        presenter?.goToQuotation()
    }
    /// Acción para movernos a la pantalla de envíos y guías.
    /// - Parameter sender: contiene la información del botón que se pulso
    @IBAction func goToShipping(_ sender: UIButton) {
        presenter?.goToShipping()
    }
}
///Protocolo para recibir datos de presenter.
extension DBHomeVC: DBHomeViewProtocol {
    func loadInfo(){
        print("Realizar acciones de repintado de la vista")
    }
}

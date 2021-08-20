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

    @IBOutlet weak var btnShipping: UIButton!
    @IBOutlet weak var btnTrackingGuide: UIButton!
    var presenter: DBShippingPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        //Opcional
        presenter?.getInitialInfo()
        setUpView()
    }
    func setUpView() {
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        title = "E N V Í O S"
    }

}
///Protocolo para recibir datos de presenter.
extension DBShippingVC: DBShippingViewProtocol {
    func loadInfo(){
        print("Realizar acciones de repintado de la vista")
    }
}

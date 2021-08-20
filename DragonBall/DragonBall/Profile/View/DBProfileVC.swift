//
//  DBProfileVC.swift
//  DragonBall
//
//  Created by Juan Esquivel on 09/08/21.
//  
//

import Foundation
import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth
import SCLAlertView

class DBProfileVC: UIViewController {

    var presenter: DBProfilePresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        initalizeNavigationBarItems()
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
        title = "P E R F I L"
    }
    /// Función para asignar botón al navigationBar
    private func initalizeNavigationBarItems() {
        let profileBarButtonView = ImageBarButton(withImage: #imageLiteral(resourceName: "log-out"))
        profileBarButtonView.button.addTarget(self, action: #selector(logOut), for: .touchUpInside)
        navigationItem.rightBarButtonItems = [profileBarButtonView.load()]
    }

}
///Protocolo para recibir datos de presenter.
extension DBProfileVC: DBProfileViewProtocol {
    /// Función para ver el detalle del perfil.
    @objc func logOut() {
        let alertView = SCLAlertView()
        alertView.addButton("OK") {
            do {
                try Auth.auth().signOut()
                self.presenter?.goToLogin()
            } catch let err {
                SCLAlertView().showError("No se pudo cerrar la sesion", subTitle: "\(err)") // Error
            }
        }
        alertView.showWarning("Cerrar Sesion", subTitle: "Esta seguro que desea cerrar sesion.")
    }
}

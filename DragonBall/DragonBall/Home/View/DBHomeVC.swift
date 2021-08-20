//
//  DBHomeVC.swift
//  DragonBall
//
//  Created by Juan Esquivel on 14/07/21.
//  
//
import UIKit
import Foundation
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class DBHomeVC: UIViewController {

    @IBOutlet weak var btnSales: UIButton!
    @IBOutlet weak var btnReferral: UIButton!
    @IBOutlet weak var btnWarehouse: UIButton!
    @IBOutlet weak var btnQuotation: UIButton!
    @IBOutlet weak var btnShipping: UIButton!
    var presenter: DBHomePresenterProtocol?
    var db: Firestore!
    var ref: DocumentReference? = nil
    var conection = UserSetFirestore()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpFirestore()
        setUpView()
        testFirestore()
        initalizeNavigationBarItems()
        //Opcional
        presenter?.getInitialInfo()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.setHidesBackButton(true, animated: true)

    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationItem.setHidesBackButton(false, animated: true)
    }
    /// Función para asignar botón al navigationBar
    private func initalizeNavigationBarItems() {
        let profileBarButtonView = ImageBarButton(withImage: #imageLiteral(resourceName: "user"))
        profileBarButtonView.button.addTarget(self, action: #selector(goToProfile), for: .touchUpInside)
        navigationItem.rightBarButtonItems = [profileBarButtonView.load()]
    }
    @objc func presentMoreViewController(_ sender: Any) {
        // present MoreViewController
    }
    
    func setUpFirestore() {
 
    }
    func testFirestore() {
//        let signUpManager = FirebaseAuthManager()
        
//        if let email = emailTextField.text, let password = passwordTextField.text {
//        guard let email = contactPointTextField.text, let password = passwordTextField.text else { return }
//        signUpManager.signIn(email: email, pass: password) {[weak self] (success) in
//          self?.showPopup(isSuccess: success)
//        }
//        
        
//        signUpManager.createUser(email: "jbelu1112@gmail.com", password: "pruebaPrueba") { [weak self] (success, alertMessage) in
//            guard let `self` = self else { return }
//            let alertController = UIAlertController(title: nil, message: alertMessage, preferredStyle: .alert)
//            alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
//            self.display(alertController: alertController)
//        }
        
//        }
            
        // Add a new document with a generated ID
        // Add a second document with a generated ID.
//      db.collection("users").getDocuments() { (querySnapshot, err) in
//            if let err = err {
//                print("Error getting documents: \(err)")
//            } else {
//                let users = querySnapshot!.documents
//                try! users.forEach { user in
//                    let myUser: UserFirestore = try user.decodedUsers()
//                    print(myUser.id)
//                }
//            }
//        }
    }
    func display(alertController: UIAlertController) {
        self.present(alertController, animated: true, completion: nil)
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
}
extension DBHomeVC {
    /// Función para ver el detalle del perfil.
    @objc func goToProfile() {
        presenter?.goToProfile()
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
    func loadInfo() {
        print("Realizar acciones de repintado de la vista")
    }
}

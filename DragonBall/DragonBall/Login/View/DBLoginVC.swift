//
//  DBLoginVC.swift
//  DB
//
//  Created by Juan Esquivel on 28/06/21.
//  
//
import Foundation
import UIKit
import FirebaseAuth
import SCLAlertView
/// Clase DBLoginVC.
class DBLoginVC: UIViewController {

    var presenter: DBLoginPresenterProtocol?
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var passwordTextField: ATCTextField!
    @IBOutlet var emailTextField: ATCTextField!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var separatorLabel: UILabel!
    @IBOutlet var facebookButton: UIButton!
    @IBOutlet var backButton: UIButton!
    private let backgroundColor = HelperDarkMode.mainThemeBackgroundColor
    private let tintColor = UIColor(hexString: "#ff5a66")
    private let titleFont = UIFont.boldSystemFont(ofSize: 30)
    private let buttonFont = UIFont.boldSystemFont(ofSize: 20)
    private let textFieldFont = UIFont.systemFont(ofSize: 16)
    private let textFieldColor = UIColor(hexString: "#B0B3C6")
    private let textFieldBorderColor = UIColor(hexString: "#B0B3C6")
    private let separatorFont = UIFont.boldSystemFont(ofSize: 14)
    private let separatorTextColor = UIColor(hexString: "#464646")
    private let signUpManager = FirebaseAuthManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = backgroundColor
        setUpButtons()
        setUpTextFields()
        setUpLabels()
        hideKeyboardWhenTappedAround()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    /// Función que contiene la configuración de los botones.
    func setUpButtons() {
        loginButton.setTitle("Log In", for: .normal)
        loginButton.configure(color: backgroundColor,
                              font: buttonFont,
                              cornerRadius: 55/2,
                              backgroundColor: tintColor)
        facebookButton.setTitle("Facebook Login", for: .normal)
        facebookButton.configure(color: backgroundColor,
                                 font: buttonFont,
                                 cornerRadius: 55/2,
                                 backgroundColor: UIColor(hexString: "#334D92"))
        backButton.setImage(UIImage.localImage("arrow-back-icon", template: true), for: .normal)
        backButton.tintColor = UIColor(hexString: "#282E4F")
    }
    /// Función que contiene la configuración de los textFields.
    func setUpTextFields() {
        emailTextField.placeholder = "E-mail"
        emailTextField.textContentType = .emailAddress
        emailTextField.clipsToBounds = true
        emailTextField.configure(color: textFieldColor,
                                    font: textFieldFont,
                                    cornerRadius: 55/2,
                                    borderColor: textFieldBorderColor,
                                    backgroundColor: backgroundColor,
                                    borderWidth: 1.0)
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.textContentType = .emailAddress
        passwordTextField.clipsToBounds = true
        passwordTextField.configure(color: textFieldColor,
                                    font: textFieldFont,
                                    cornerRadius: 55/2,
                                    borderColor: textFieldBorderColor,
                                    backgroundColor: backgroundColor,
                                    borderWidth: 1.0)
    }
    /// Función que contiene la configuración de los labels.
    func setUpLabels() {
        titleLabel.font = titleFont
        titleLabel.text = "Log In"
        titleLabel.textColor = tintColor
        
        separatorLabel.font = separatorFont
        separatorLabel.textColor = separatorTextColor
        separatorLabel.text = "OR"
    }
    /// Función que contiene la configuración para esconder el teclado.
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(DBLoginVC.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

}
/// Extensión de loginVC que contiene las acciones de los botones.
extension DBLoginVC {
    ///Acción al pulsar el botón de login con Firebase.
    @IBAction func didTapLoginButton(_ sender: UIButton) {
        if emailTextField.text != "", passwordTextField.text != "" {
            guard let email = emailTextField.text, let password = passwordTextField.text else { return }
            signUpManager.signIn(email: email, password: password) {[weak self] (success, message) in
                if let loginVc = self {
                    if success {
                        loginVc.presenter?.goToHome()
                    } else {
                        loginVc.showPopup(isSuccess: success, message: message)
                    }
                }
            }
        } else {
            if emailTextField.text == "" {
                self.showPopup(isSuccess: false, message: "El campo de correo no puede estar vacío.")
                return
            }
            if passwordTextField.text == "" {
                self.showPopup(isSuccess: false, message: "El campo de password no puede estar vacío.")
                return
            }
        }
    }
    ///Acción al pulsar el botón de login con Facebook.
    @IBAction func didTapFacebookButton(_ sender: UIButton) {
    }
    ///Acción al pulsar el botón de regresar.
    @IBAction func didTapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    ///Acción al pulsar el botón de login.
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    /// Función que contiene la configuración para mostrar las alertas.
    func showPopup(isSuccess: Bool, message: String) {
        if isSuccess {
            SCLAlertView().showSuccess(isSuccess ? "Success": "Error", subTitle: message)
        } else {
            SCLAlertView().showError(isSuccess ? "Success": "Error", subTitle: message)
        }
    }
}
///Protocolo para recibir datos de presenter.
extension DBLoginVC: DBLoginViewProtocol {
}

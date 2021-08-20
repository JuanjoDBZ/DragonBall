//
//  DBSignUpVC.swift
//  DB
//
//  Created by Juan Esquivel on 28/06/21.
//  
//
import Foundation
import UIKit
import SCLAlertView

class DBSignUpVC: UIViewController {

    var presenter: DBSignUpPresenterProtocol?
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var containerView: UIView!
    @IBOutlet var backButton: UIButton!
    @IBOutlet var nameTextField: ATCTextField!
    @IBOutlet var phoneNumberTextField: ATCTextField!
    @IBOutlet var passwordTextField: ATCTextField!
    @IBOutlet var emailTextField: ATCTextField!
    @IBOutlet var errorLabel: UILabel!
    @IBOutlet var signUpButton: UIButton!
    private let tintColor = UIColor(hexString: "#ff5a66")
    private let backgroundColor: UIColor = HelperDarkMode.mainThemeBackgroundColor
    private let textFieldColor = UIColor(hexString: "#B0B3C6")
    private let textFieldBorderColor = UIColor(hexString: "#B0B3C6")
    private let titleFont = UIFont.boldSystemFont(ofSize: 30)
    private let textFieldFont = UIFont.systemFont(ofSize: 16)
    private let buttonFont = UIFont.boldSystemFont(ofSize: 20)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = backgroundColor
        setUpLabel()
        setUpButton()
        setUpTextField()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    /// Función que contiene la configuración de los labels.
    func setUpLabel() {
        titleLabel.font = titleFont
        titleLabel.text = "Sign Up"
        titleLabel.textColor = tintColor
    }
    /// Función que contiene la configuración de los botónes..
    func setUpButton() {
        signUpButton.setTitle("Create Account", for: .normal)
        signUpButton.addTarget(self, action: #selector(didTapCreateAccountButton), for: .touchUpInside)
        signUpButton.configure(color: backgroundColor,
                               font: buttonFont,
                               cornerRadius: 40/2,
                               backgroundColor: UIColor(hexString: "#334D92"))
        let color = UIColor(hexString: "#282E4F")
        backButton.tintColor = color
        backButton.addTarget(self, action: #selector(didTapBackButton), for: .touchUpInside)
    }
    /// Función que contiene la configuración de los textFields.
    func setUpTextField() {
        nameTextField.configure(color: textFieldColor,
                                font: textFieldFont,
                                cornerRadius: 40/2,
                                borderColor: textFieldBorderColor,
                                backgroundColor: backgroundColor,
                                borderWidth: 1.0)
        nameTextField.placeholder = "Full Name"
        nameTextField.clipsToBounds = true

        emailTextField.configure(color: textFieldColor,
                                 font: textFieldFont,
                                 cornerRadius: 40/2,
                                 borderColor: textFieldBorderColor,
                                 backgroundColor: backgroundColor,
                                 borderWidth: 1.0)
        emailTextField.placeholder = "E-mail Address"
        emailTextField.clipsToBounds = true

        phoneNumberTextField.configure(color: textFieldColor,
                                       font: textFieldFont,
                                       cornerRadius: 40/2,
                                       borderColor: textFieldBorderColor,
                                       backgroundColor: backgroundColor,
                                       borderWidth: 1.0)
        phoneNumberTextField.placeholder = "Phone Number"
        phoneNumberTextField.clipsToBounds = true

        passwordTextField.configure(color: textFieldColor,
                                    font: textFieldFont,
                                    cornerRadius: 40/2,
                                    borderColor: textFieldBorderColor,
                                    backgroundColor: backgroundColor,
                                    borderWidth: 1.0)
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.clipsToBounds = true
    }
}
/// Extensión de signUpVC que contiene las acciones de los botones y para las alertas.
extension DBSignUpVC {
    @IBAction func didTapSignUpButton(_ sender: UIButton) {
        if nameTextField.text != "", phoneNumberTextField.text != "", emailTextField.text != "", passwordTextField.text != "" {
            guard let userName = nameTextField.text, let phoneNumber = phoneNumberTextField.text, let email = emailTextField.text, let password = passwordTextField.text else { return }
            let dataUser = DataUserRegister(name: userName, phoneNumber: phoneNumber, email: email, password: password)
            presenter?.createNewUserPresenter(newUser: dataUser)
        } else {
            showPopup(isSuccess: false, message: "Faltan datos por llenar.")
        }
    }
    ///Acción al pulsar el botón de regresar.
    @objc func didTapBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    ///Acción al pulsar el botón de crear cuenta.
    @objc func didTapCreateAccountButton() {
    }
}
///Protocolo para recibir datos de presenter.
extension DBSignUpVC: DBSignUpViewProtocol {
    /// Función que contiene la configuración para mostrar las alertas.
    func showPopup(isSuccess: Bool, message: String) {
        if isSuccess {
            SCLAlertView().showSuccess(isSuccess ? "Success": "Error", subTitle: message)
        } else {
            SCLAlertView().showError(isSuccess ? "Success": "Error", subTitle: message)
        }
    }
}

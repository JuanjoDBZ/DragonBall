//
//  DBLandingScreenVC.swift
//  DB
//
//  Created by Juan Esquivel on 29/06/21.
//  
//

import Foundation
import UIKit

class DBLandingScreenVC: UIViewController {

    var presenter: DBLandingScreenPresenterProtocol?
    @IBOutlet var logoImageView: UIImageView!
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var signUpButton: UIButton!
    private let backgroundColor: UIColor = .white
    private let tintColor = UIColor(hexString: "#ff5a66")
    private let subtitleColor = UIColor(hexString: "#464646")
    private let signUpButtonColor = UIColor(hexString: "#414665")
    private let signUpButtonBorderColor = UIColor(hexString: "#B0B3C6")
    private let titleFont = UIFont.boldSystemFont(ofSize: 30)
    private let subtitleFont = UIFont.boldSystemFont(ofSize: 18)
    private let buttonFont = UIFont.boldSystemFont(ofSize: 24)
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLabel()
        setUpButton()
        setUpView()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.setHidesBackButton(true, animated: true)

    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationItem.setHidesBackButton(true, animated: true)
    }
    /// Función para darle formato a la vista
    func setUpView() {
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isTranslucent = true
    }
    /// Función que contiene la configuración de los labels.
    func setUpLabel() {
        titleLabel.font = titleFont
        titleLabel.text = "Welcome to BigBangToys"
        titleLabel.textColor = HelperDarkMode.mainTextColor

        subtitleLabel.font = subtitleFont
        subtitleLabel.text = "Nacidos como hombres pero convertidos en coleccionistas."
        subtitleLabel.textColor = HelperDarkMode.mainTextColor
    }
    /// Función que contiene la configuración de los botones.
    func setUpButton() {
        loginButton.setTitle("Log in", for: .normal)
        loginButton.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        loginButton.configure(color: .white,
                              font: buttonFont,
                              cornerRadius: 55/2,
                              backgroundColor: tintColor)
        loginButton.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.addTarget(self, action: #selector(didTapSignUpButton), for: .touchUpInside)
        signUpButton.configure(color: signUpButtonColor,
                               font: buttonFont,
                               cornerRadius: 55/2,
                               borderColor: signUpButtonBorderColor,
                               backgroundColor: backgroundColor,
                               borderWidth: 1)
        signUpButton.addTarget(self, action: #selector(didTapSignUpButton), for: .touchUpInside)
    }
}
///Extensión de landingScreenVC que contiene las acciones de los botones.
extension DBLandingScreenVC {
    ///Acción al pulsar el botón de login.
    @objc private func didTapLoginButton() {
        presenter?.showDBLoginVC()
    }
    ///Acción al pulsar el botón de sign up.
    @objc private func didTapSignUpButton() {
        presenter?.showDBSignUp()
    }
}
///Protocolo para recibir datos de presenter.
extension DBLandingScreenVC: DBLandingScreenViewProtocol {
}

//
//  DBSignUpInteractor.swift
//  DB
//
//  Created by Juan Esquivel on 28/06/21.
//  
//
import Foundation

class DBSignUpInteractor {
    var presenter: DBSignUpInteractorOutputProtocol?
    private let signUpManager = FirebaseAuthManager()
    private let createUserFirestore = UserSetFirestore()
}
extension DBSignUpInteractor: DBSignUpInteractorInputProtocol {
    func createNewUserInteractor(newUser: DataUserRegister) {
        signUpManager.createUser(email: newUser.email, password: newUser.password, completionBlock: { [weak self] (success, message) in
            guard self != nil else { return }
            if success {
                if let ref = self {
                    let response = ref.createUserFirestore.setUsers(users: UserFirestore(name: newUser.name, phoneNumber: newUser.phoneNumber, email: newUser.email, password: newUser.password))
                    ref.presenter?.resulsetSuccess(resulset: response.resultset, message: response.message)
                }
            } else {
                if let ref = self {
                    ref.presenter?.resulsetError(resulset: success, message: message)
                }
            }
        })
    }
}

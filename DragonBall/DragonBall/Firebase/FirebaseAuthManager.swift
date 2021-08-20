//
//  FirebaseAuthManager.swift
//  DragonBall
//
//  Created by Juan Esquivel on 19/07/21.
//
import UIKit
import Foundation
import FirebaseAuth
import FirebaseFirestore
import FirebaseFirestoreSwift
/// Clase para conexión a Firebase.
class FirebaseAuthManager {
//    /// Variable para crear guardar los demás datos del usuario.
//    var createUserProfile = UserSetFirestore()
    /// Función para iniciar sesión con facebook.
    /// - Parameters:
    ///   - credential: Credencial para entrar en FB.
    ///   - completionBlock: Contiene lo que retorna la función que se ejecuta.
    func login(credential: AuthCredential, completionBlock: @escaping (_ success: Bool) -> Void) {
        Auth.auth().signIn(with: credential, completion: { (firebaseUser, error) in
            if let user = firebaseUser {
                print(user)
            }
            completionBlock(error == nil)
        })
    }
    /// Función para crear usuario con correo.
    /// - Parameters:
    ///   - email: Contiene el email del usuario.
    ///   - password: Contiene el password del usuario.
    ///   - completionBlock: Contiene lo que retorna la función a quién la ejecuta.
    func createUser(email: String, password: String, completionBlock: @escaping (_ success: Bool, _ message: String) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) {
            (authResult, error) in
            if let user = authResult?.user {
                print(user)
                completionBlock(true, "El usuario se ha creado correctamente.")
            } else {
                if let errCode = AuthErrorCode(rawValue: error!._code) {
                    let errMessage = self.alertUser(of: errCode)
                    completionBlock(false, errMessage)
                }
            }
        }
    }
    /// Función para iniciar sesión con correo.
    /// - Parameters:
    ///   - email: Contiene el email del usuario.
    ///   - password: Contiene el password del usuario.
    ///   - completionBlock: Contiene lo que retorna la función a quién la ejecuta.
    func signIn(email: String, password: String, completionBlock: @escaping (_ success: Bool, _ message: String) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if let error = error, let errCode = AuthErrorCode(rawValue: error._code) {
                let errMessage = self.alertUser(of: errCode)
                completionBlock(false, errMessage)
            } else {
                completionBlock(true, "Sesión iniciada correctamente.")
            }
        }
    }
    /// Función para regresar el mensaje de error.
    /// - Parameter errCode: Código de error que regresa firebase.
    /// - Returns: Regresa un string de error según el código.
    func alertUser(of errCode: AuthErrorCode) -> String {
        var message: String
        switch errCode {
        case .accountExistsWithDifferentCredential:
            message = "0- Indicates account linking is required."
        case .adminRestrictedOperation:
            message = "1- Indicates that the operation is admin restricted."
        case .appNotAuthorized:
            message = "2- Indicates the App is not authorized to use Firebase Authentication with the provided API Key."
        case .appNotVerified:
            message = "3- Indicates that the app could not be verified by Firebase during phone number authentication."
        case .appVerificationUserInteractionFailure:
            message = "4- Indicates a general failure during the app verification flow."
        case .captchaCheckFailed:
            message = "5- Indicates that the reCAPTCHA token is not valid."
        case .credentialAlreadyInUse:
            message = "6- Indicates an attempt to link with a credential that has already been linked with a different Firebase account"
        case .customTokenMismatch:
            message = "7- Indicates the service account and the API key belong to different projects."
        case .dynamicLinkNotActivated:
            message = "8- Indicates that a Firebase Dynamic Link is not activated."
        case .emailAlreadyInUse:
            message = "El correo electrónico ya está en uso."
        case .emailChangeNeedsVerification:
            message = "10- Indicates that the a verifed email is required to changed to."
        case .expiredActionCode:
            message = "11- Indicates the OOB code is expired."
        case .gameKitNotLinked:
            message = "12- Indicates that the GameKit framework is not linked prior to attempting Game Center signin."
        case .internalError:
            message = "13- Indicates an internal error occurred."
        case .invalidActionCode:
            message = "15- Indicates the OOB code is invalid."
        case .invalidAPIKey:
            message = "15- Indicates an invalid API key was supplied in the request."
        case .invalidAppCredential:
            message = "16- Indicates that an invalid APNS device token was used in the verifyClient request."
        case .invalidClientID:
            message = "17- Indicates that the clientID used to invoke a web flow is invalid."
        case .invalidContinueURI:
            message = "18- Indicates that the domain specified in the continue URI is not valid."
        case .invalidCredential:
            message = "19- Indicates the IDP token or requestUri is invalid."
        case .invalidCustomToken:
            message = "20- Indicates a validation error with the custom token."
        case .invalidDynamicLinkDomain:
            message = "21- Indicates that the Firebase Dynamic Link domain used is either not configured or is unauthorized for the current project."
        case .invalidEmail:
            message = "El correo es invalido."
        case .invalidMessagePayload:
            message = "23- Indicates that there are invalid parameters in the payload during a 'send password reset email' attempt."
        case .invalidMultiFactorSession:
            message = "24- Indicates that the multi factor session is invalid."
        case .invalidPhoneNumber:
            message = "25- Indicates that an invalid phone number was provided in a call to verifyPhoneNumber:completion:."
        case .invalidProviderID:
            message = "26- Represents the error code for when the given provider id for a web operation is invalid."
        case .invalidRecipientEmail:
            message = "27- Indicates that the recipient email is invalid."
        case .invalidSender:
            message = "28- Indicates that the sender email is invalid during a “send password reset email” attempt."
        case .invalidUserToken:
            message = "29- Indicates user’s saved auth credential is invalid, the user needs to sign in again."
        case .invalidVerificationCode:
            message = "30- Indicates that an invalid verification code was used in the verifyPhoneNumber request."
        case .invalidVerificationID:
            message = "31- Indicates that an invalid verification ID was used in the verifyPhoneNumber request."
        case .keychainError:
            message = "32- Indicates an error occurred while attempting to access the keychain."
        case .localPlayerNotAuthenticated:
            message = "33- Indicates that the local player was not authenticated prior to attempting Game Center signin."
        case .maximumSecondFactorCountExceeded:
            message = "34- Indicates that the maximum second factor count is exceeded."
        case .malformedJWT:
            message = "35- Raised when a JWT fails to parse correctly. May be accompanied by an underlying error describing which step of the JWT parsing process failed."
        case .missingAndroidPackageName:
            message = "36- Indicates that the android package name is missing when the androidInstallApp flag is set to true."
        case .missingAppCredential:
            message = "37- Indicates that the APNS device token is missing in the verifyClient request."
        case .missingAppToken:
            message = "38- Indicates that the APNs device token could not be obtained. The app may not have set up remote notification correctly, or may fail to forward the APNs device token to FIRAuth if app delegate swizzling is disabled."
        case .missingContinueURI:
            message = "39- Indicates that a continue URI was not provided in a request to the backend which requires one."
        case .missingClientIdentifier:
            message = "40- Indicates an error for when the client identifier is missing."
        case .missingEmail:
            message = "41- Indicates that an email address was expected but one was not provided."
        case .missingIosBundleID:
            message = "42- Indicates that the iOS bundle ID is missing when a iOS App Store ID is provided."
        case .missingMultiFactorSession:
            message = "43- Indicates that the multi factor session is missing."
        case .missingOrInvalidNonce:
            message = "44- Indicates that the nonce is missing or invalid."
        case .missingPhoneNumber:
            message = "45- Indicates that a phone number was not provided in a call to verifyPhoneNumber:completion."
        case .missingVerificationCode:
            message = "46- Indicates that the phone auth credential was created with an empty verification code."
        case .missingVerificationID:
            message = "47- Indicates that the phone auth credential was created with an empty verification ID."
        case .missingMultiFactorInfo:
            message = "48- Indicates that the multi factor info is missing."
        case .multiFactorInfoNotFound:
            message = "49- Indicates that the multi factor info is not found."
        case .networkError:
            message = "50- Indicates a network error occurred (such as a timeout, interrupted connection, or unreachable host). These types of errors are often recoverable with a retry. The NSUnderlyingError field in the NSError.userInfo dictionary will contain the error encountered."
        case.noSuchProvider:
            message = "51- Indicates an attempt to unlink a provider that is not linked."
        case .notificationNotForwarded:
            message = "52- Indicates that the app fails to forward remote notification to FIRAuth."
        case .nullUser:
            message = "53- Indicates that a non-null user was expected as an argmument to the operation but a null user was provided."
        case .operationNotAllowed:
            message = "54- Indicates the administrator disabled sign in with the specified identity provider."
        case .providerAlreadyLinked:
            message = "55- Indicates an attempt to link a provider to which the account is already linked."
        case .quotaExceeded:
            message = "56- Indicates that the quota of SMS messages for a given project has been exceeded."
        case .rejectedCredential:
            message = "57- Indicates that the credential is rejected because it’s misformed or mismatching."
        case .requiresRecentLogin:
            message = "58- Indicates the user has attemped to change email or password more than 5 minutes after signing in."
        case .secondFactorAlreadyEnrolled:
            message = "59- Indicates that the second factor is already enrolled."
        case .secondFactorRequired:
            message = "60- Indicates that the second factor is required for signin."
        case .sessionExpired:
            message = "61- Indicates that the SMS code has expired."
        case .tooManyRequests:
            message = "Se han realizado demasiadas peticiones al servidor."
        case .unauthorizedDomain:
            message = "63- Indicates that the domain specified in the continue URL is not whitelisted in the Firebase console."
        case .unsupportedFirstFactor:
            message = "64- Indicates that the first factor is not supported."
        case .unverifiedEmail:
            message = "65- Indicates that the email is required for verification."
        case .userDisabled:
            message = "66- Indicates the user’s account is disabled on the server."
        case .userMismatch:
            message = "67- Indicates that an attempt was made to reauthenticate with a user which is not the current user."
        case .userNotFound:
            message = "La cuenta que ingreso no existe."
        case .userTokenExpired:
            message = "69- Indicates the saved token has expired, for example, the user may have changed account password on another device. The user needs to sign in again on the device that made this request."
        case .weakPassword:
            message = "70- Indicates an attempt to set a password that is considered too weak."
        case .webContextAlreadyPresented:
            message = "71- Indicates that an attempt was made to present a new web context while one was already being presented."
        case .webContextCancelled:
            message = "72- Indicates that the URL presentation was cancelled prematurely by the user."
        case .webInternalError:
            message = "73- Indicates that an internal error occurred within a SFSafariViewController or WKWebView."
        case .webNetworkRequestFailed:
            message = "74- Indicates that a network request within a SFSafariViewController or WKWebView failed."
        case .wrongPassword:
            message = "La contraseña que ingresó es incorrecta."
        case .webSignInUserInteractionFailure:
            message = "76- Indicates a general failure during a web sign-in flow."
        default:
            message = "77- Unknown error occurred"
        }
        return message
    }
}
class UserSetFirestore: ObservableObject {
    var userFirestore = [UserFirestore]()
    private var db = Firestore.firestore()
    
    /// Función para agregar usuarios nuevos.
    /// - Parameter users: Contiene la estructura de datos para agregar los usuarios.
    func setUsers(users: UserFirestore) -> (resultset: Bool, message: String) {
        do {
            _ = try db.collection("users").addDocument(from: users)
            return (true, "Se agrego correctamente el usuario")
        } catch {
            return (false, "No se agrego correctamente el usuario")
        }
    }
}
extension QueryDocumentSnapshot {
    func decodedUsers<Type: Decodable>() throws -> Type {
        let jsonData =  try JSONSerialization.data(withJSONObject: data(), options:[])
        let object = try JSONDecoder().decode(Type.self, from: jsonData)
        return object
    }
}

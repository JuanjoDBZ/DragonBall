//
//  StructsCodable.swift
//  DragonBall
//
//  Created by Juan Esquivel on 16/07/21.
//

import Foundation
import FirebaseFirestoreSwift

struct UserFirestore: Identifiable, Codable {
    @DocumentID var id: String? = UUID().uuidString
    var name: String
    var phoneNumber: String
    var email: String
    var password: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case phoneNumber
        case email
        case password
    }
}

//
//  String+ValidateFields.swift
//  PlateSpace
//

import Foundation

extension String {
    static func isValidEmail(_ text: String?) -> Bool {
        if let email = text , !email.isEmpty {
            let regexString = "^.+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*$"
            let predicateText = NSPredicate(format: "SELF MATCHES %@", regexString)
            return predicateText.evaluate(with: email)
        }
        
        return false
    }
    
    static func isValidPassword(_ text: String?) -> Bool {
        if let password = text {
            return !password.trimmingCharacters(in: .whitespaces).isEmpty
        }
        
        return false
    }
}

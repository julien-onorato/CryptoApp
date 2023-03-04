//
//  UIApplication.swift
//  CryptoApp
//
//  Created by Julien Onorato on 01/09/2022.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

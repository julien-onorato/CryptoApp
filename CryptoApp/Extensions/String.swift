//
//  String.swift
//  CryptoApp
//
//  Created by Julien Onorato on 14/09/2022.
//

import Foundation

extension String {
    var removingHTMLOccurences: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}

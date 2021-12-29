//
//  String+Extension.swift
//  
//
//  Created by Aaron Hinton on 12/28/21.
//

import Foundation

extension String {
    func chomp() -> String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

//
//  Destination.swift
//  CharKataReader
//
//  Created by Kevashan Govender on 2024/07/09.
//

import Foundation

protocol Destination {
    func write(char: Character)
    func write(chars: [Character])
}

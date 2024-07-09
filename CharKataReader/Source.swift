//
//  Source.swift
//  CharKataReader
//
//  Created by Kevashan Govender on 2024/07/09.
//

import Foundation

protocol Source {
    func read() -> Character
    func read(count: Int) -> [Character]
}

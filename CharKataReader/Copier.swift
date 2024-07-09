//
//  Copier.swift
//  CharKataReader
//
//  Created by Kevashan Govender on 2024/07/09.
//

import Foundation

struct Copier {
    
    private var source: Source
    private var destination: Destination
    
    init(source: Source, destination: Destination) {
        self.source = source
        self.destination = destination
    }
    
    func copy() {
        var readCharacter: Character
        
        while true {
            readCharacter = source.read()
            
            if readCharacter == StopConditions.newline.condition {
                return
            }
            
            destination.write(char: readCharacter)
        }
    }
    
    func copy(count: Int) {
        if count == 0 {
            return
        }
        
        let readCharacters = source.read(count: count)
        
        if let index = readCharacters.firstIndex(of: StopConditions.newline.condition) {
            let newArray = Array(readCharacters[..<index])
            destination.write(chars: newArray)
        } else {
            destination.write(chars: readCharacters)
        }
    }
}

enum StopConditions {
    case newline
    
    var condition: Character {
        switch self {
        case .newline:
            return "\n"
        }
    }
}

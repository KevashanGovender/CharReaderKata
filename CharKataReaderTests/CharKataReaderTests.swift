//
//  CharKataReaderTests.swift
//  CharKataReaderTests
//
//  Created by Kevashan Govender on 2024/07/09.
//

import XCTest
import Cuckoo
@testable import CharKataReader

final class CharKataReaderTests: XCTestCase {

    private var mockSource = MockSource()
    private var mockDestination = MockDestination()
    private var copier: Copier!
    
    override func setUp() {
        copier = Copier(source: mockSource, destination: mockDestination)
    }
    
    func testShouldReadCharacterFromSourceAndWriteToDestinationUntilNewLineIsEncountered() {
        stub(mockSource) { when($0.read()).thenReturn("H", "\n", "I") }
        stub(mockDestination) { when($0.write(char: "H" as Character)).thenDoNothing() }
        
        copier.copy()
        
        verify(mockSource, times(2)).read()
        verify(mockDestination).write(char: "H" as Character)
        verify(mockDestination, never()).write(char: "I" as Character)
    }
    
    func testShouldReadCharacterFromSourceButNotWriteToDestinationIfNewLineIsEncounteredFirst() {
        stub(mockSource) { when($0.read()).thenReturn("\n") }
        
        copier.copy()
        
        verify(mockSource).read()
        verify(mockDestination, never()).write(char: any())
    }
    
    func testShouldNotReadOrWriteIfCountIsZero() {
        copier.copy(count: 0)
        
        verify(mockSource, never()).read(count: 0)
        verify(mockDestination, never()).write(char: any())
    }
    
    func testShouldOnlyWriteElementsThatAreValidAndNotNewLine() {
        stub(mockSource) { stub in
            when(stub.read(count: 4)).thenReturn(["H", "E", "L", "\n"])
        }
        
        stub(mockDestination) { stub in
            when(stub.write(chars: ["H", "E", "L"])).thenDoNothing()
        }
        
        copier.copy(count: 4)
        
        verify(mockSource).read(count: 4)
        verify(mockDestination).write(chars: ["H", "E", "L"])
    }
    
    func testShouldNotTrimReadCharacterIfNoNewLineIsPresent() {
        stub(mockSource) { stub in
            when(stub.read(count: 4)).thenReturn(["H", "E", "L", "P"])
        }
        
        stub(mockDestination) { stub in
            when(stub.write(chars: ["H", "E", "L", "P"])).thenDoNothing()
        }
        
        copier.copy(count: 4)
        
        verify(mockSource).read(count: 4)
        verify(mockDestination).write(chars: ["H", "E", "L", "P"])
    }

}

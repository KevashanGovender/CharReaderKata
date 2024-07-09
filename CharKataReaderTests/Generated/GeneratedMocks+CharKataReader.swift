// MARK: - Mocks generated from file: 'CharKataReader/CharKataReaderApp.swift'

import Cuckoo
import SwiftUI
import Foundation
@testable import CharKataReader



// MARK: - Mocks generated from file: 'CharKataReader/ContentView.swift'

import Cuckoo
import SwiftUI
import Foundation
@testable import CharKataReader



// MARK: - Mocks generated from file: 'CharKataReader/Copier.swift'

import Cuckoo
import Foundation
@testable import CharKataReader



// MARK: - Mocks generated from file: 'CharKataReader/Destination.swift'

import Cuckoo
import Foundation
@testable import CharKataReader

class MockDestination: Destination, Cuckoo.ProtocolMock {
    typealias MocksType = Destination
    typealias Stubbing = __StubbingProxy_Destination
    typealias Verification = __VerificationProxy_Destination

    // Original typealiases

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    private var __defaultImplStub: (any Destination)?

    func enableDefaultImplementation(_ stub: any Destination) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    func write(char p0: Character) {
        return cuckoo_manager.call(
            "write(char p0: Character)",
            parameters: (p0),
            escapingParameters: (p0),
            superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall(),
            defaultCall: __defaultImplStub!.write(char: p0)
        )
    }
    
    func write(chars p0: [Character]) {
        return cuckoo_manager.call(
            "write(chars p0: [Character])",
            parameters: (p0),
            escapingParameters: (p0),
            superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall(),
            defaultCall: __defaultImplStub!.write(chars: p0)
        )
    }

    struct __StubbingProxy_Destination: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        func write<M1: Cuckoo.Matchable>(char p0: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Character)> where M1.MatchedType == Character {
            let matchers: [Cuckoo.ParameterMatcher<(Character)>] = [wrap(matchable: p0) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockDestination.self,
                method: "write(char p0: Character)",
                parameterMatchers: matchers
            ))
        }
        
        func write<M1: Cuckoo.Matchable>(chars p0: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([Character])> where M1.MatchedType == [Character] {
            let matchers: [Cuckoo.ParameterMatcher<([Character])>] = [wrap(matchable: p0) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockDestination.self,
                method: "write(chars p0: [Character])",
                parameterMatchers: matchers
            ))
        }
    }

    struct __VerificationProxy_Destination: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        
        @discardableResult
        func write<M1: Cuckoo.Matchable>(char p0: M1) -> Cuckoo.__DoNotUse<(Character), Void> where M1.MatchedType == Character {
            let matchers: [Cuckoo.ParameterMatcher<(Character)>] = [wrap(matchable: p0) { $0 }]
            return cuckoo_manager.verify(
                "write(char p0: Character)",
                callMatcher: callMatcher,
                parameterMatchers: matchers,
                sourceLocation: sourceLocation
            )
        }
        
        
        @discardableResult
        func write<M1: Cuckoo.Matchable>(chars p0: M1) -> Cuckoo.__DoNotUse<([Character]), Void> where M1.MatchedType == [Character] {
            let matchers: [Cuckoo.ParameterMatcher<([Character])>] = [wrap(matchable: p0) { $0 }]
            return cuckoo_manager.verify(
                "write(chars p0: [Character])",
                callMatcher: callMatcher,
                parameterMatchers: matchers,
                sourceLocation: sourceLocation
            )
        }
    }
}

class DestinationStub:Destination {


    
    func write(char p0: Character) {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    func write(chars p0: [Character]) {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
}




// MARK: - Mocks generated from file: 'CharKataReader/Source.swift'

import Cuckoo
import Foundation
@testable import CharKataReader

class MockSource: Source, Cuckoo.ProtocolMock {
    typealias MocksType = Source
    typealias Stubbing = __StubbingProxy_Source
    typealias Verification = __VerificationProxy_Source

    // Original typealiases

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    private var __defaultImplStub: (any Source)?

    func enableDefaultImplementation(_ stub: any Source) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    func read() -> Character {
        return cuckoo_manager.call(
            "read() -> Character",
            parameters: (),
            escapingParameters: (),
            superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall(),
            defaultCall: __defaultImplStub!.read()
        )
    }
    
    func read(count p0: Int) -> [Character] {
        return cuckoo_manager.call(
            "read(count p0: Int) -> [Character]",
            parameters: (p0),
            escapingParameters: (p0),
            superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall(),
            defaultCall: __defaultImplStub!.read(count: p0)
        )
    }

    struct __StubbingProxy_Source: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        func read() -> Cuckoo.ProtocolStubFunction<(), Character> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockSource.self,
                method: "read() -> Character",
                parameterMatchers: matchers
            ))
        }
        
        func read<M1: Cuckoo.Matchable>(count p0: M1) -> Cuckoo.ProtocolStubFunction<(Int), [Character]> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: p0) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockSource.self,
                method: "read(count p0: Int) -> [Character]",
                parameterMatchers: matchers
            ))
        }
    }

    struct __VerificationProxy_Source: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        
        @discardableResult
        func read() -> Cuckoo.__DoNotUse<(), Character> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify(
                "read() -> Character",
                callMatcher: callMatcher,
                parameterMatchers: matchers,
                sourceLocation: sourceLocation
            )
        }
        
        
        @discardableResult
        func read<M1: Cuckoo.Matchable>(count p0: M1) -> Cuckoo.__DoNotUse<(Int), [Character]> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: p0) { $0 }]
            return cuckoo_manager.verify(
                "read(count p0: Int) -> [Character]",
                callMatcher: callMatcher,
                parameterMatchers: matchers,
                sourceLocation: sourceLocation
            )
        }
    }
}

class SourceStub:Source {


    
    func read() -> Character {
        return DefaultValueRegistry.defaultValue(for: (Character).self)
    }
    
    func read(count p0: Int) -> [Character] {
        return DefaultValueRegistry.defaultValue(for: ([Character]).self)
    }
}



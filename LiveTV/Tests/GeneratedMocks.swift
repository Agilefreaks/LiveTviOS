// MARK: - Mocks generated from file: LiveTV/Scenes/LiveChannelsList/LiveChannelsService.swift at 2017-03-07 14:55:41 +0000

//
//  LiveChannelsService.swift
//  LiveTV
//
//  Created by Mihai Pantiru on 06/03/2017.
//  Copyright © 2017 AgileFreaks. All rights reserved.
//

import Cuckoo
@testable import LiveTV

import Foundation

class MockListChannelsServiceProtocol: ListChannelsServiceProtocol, Cuckoo.Mock {
    typealias MocksType = ListChannelsServiceProtocol
    typealias Stubbing = __StubbingProxy_ListChannelsServiceProtocol
    typealias Verification = __VerificationProxy_ListChannelsServiceProtocol
    let manager = Cuckoo.MockManager()
    
    private var observed: ListChannelsServiceProtocol?
    
    func spy(on victim: ListChannelsServiceProtocol) -> Self {
        observed = victim
        return self
    }
    
    func getLiveChannelsList(success: @escaping ([LiveChannel]) -> Void, failure: @escaping (Error) -> Void) {
        return manager.call("getLiveChannelsList(success: @escaping ([LiveChannel]) -> Void, failure: @escaping (Error) -> Void)", parameters: (success, failure), original: observed.map { o in return { (success: @escaping ([LiveChannel]) -> Void, failure: @escaping (Error) -> Void) in o.getLiveChannelsList(success: success, failure: failure) } })
    }
    
    struct __StubbingProxy_ListChannelsServiceProtocol: Cuckoo.StubbingProxy {
        private let manager: Cuckoo.MockManager
        
        init(manager: Cuckoo.MockManager) {
            self.manager = manager
        }
        
        func getLiveChannelsList<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(success: M1, failure: M2) -> Cuckoo.StubNoReturnFunction<(([LiveChannel]) -> Void, (Error) -> Void)> where M1.MatchedType == ([LiveChannel]) -> Void, M2.MatchedType == (Error) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(([LiveChannel]) -> Void, (Error) -> Void)>] = [wrap(matchable: success) { $0.0 }, wrap(matchable: failure) { $0.1 }]
            return Cuckoo.StubNoReturnFunction(stub: manager.createStub("getLiveChannelsList(success: @escaping ([LiveChannel]) -> Void, failure: @escaping (Error) -> Void)", parameterMatchers: matchers))
        }
    }
    
    struct __VerificationProxy_ListChannelsServiceProtocol: Cuckoo.VerificationProxy {
        private let manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
        
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        @discardableResult
        func getLiveChannelsList<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(success: M1, failure: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == ([LiveChannel]) -> Void, M2.MatchedType == (Error) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(([LiveChannel]) -> Void, (Error) -> Void)>] = [wrap(matchable: success) { $0.0 }, wrap(matchable: failure) { $0.1 }]
            return manager.verify("getLiveChannelsList(success: @escaping ([LiveChannel]) -> Void, failure: @escaping (Error) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class ListChannelsServiceProtocolStub: ListChannelsServiceProtocol {
    
    func getLiveChannelsList(success: @escaping ([LiveChannel]) -> Void, failure: @escaping (Error) -> Void) {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
}

class MockLiveChannelsService: LiveChannelsService, Cuckoo.Mock {
    typealias MocksType = LiveChannelsService
    typealias Stubbing = __StubbingProxy_LiveChannelsService
    typealias Verification = __VerificationProxy_LiveChannelsService
    let manager = Cuckoo.MockManager()
    
    private var observed: LiveChannelsService?
    
    func spy(on victim: LiveChannelsService) -> Self {
        observed = victim
        return self
    }
    
    override func getLiveChannelsList(success: @escaping ([LiveChannel]) -> Void, failure: @escaping (Error) -> Void) {
        return manager.call("getLiveChannelsList(success: @escaping ([LiveChannel]) -> Void, failure: @escaping (Error) -> Void)", parameters: (success, failure), original: observed.map { o in return { (success: @escaping ([LiveChannel]) -> Void, failure: @escaping (Error) -> Void) in o.getLiveChannelsList(success: success, failure: failure) } })
    }
    
    struct __StubbingProxy_LiveChannelsService: Cuckoo.StubbingProxy {
        private let manager: Cuckoo.MockManager
        
        init(manager: Cuckoo.MockManager) {
            self.manager = manager
        }
        
        func getLiveChannelsList<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(success: M1, failure: M2) -> Cuckoo.StubNoReturnFunction<(([LiveChannel]) -> Void, (Error) -> Void)> where M1.MatchedType == ([LiveChannel]) -> Void, M2.MatchedType == (Error) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(([LiveChannel]) -> Void, (Error) -> Void)>] = [wrap(matchable: success) { $0.0 }, wrap(matchable: failure) { $0.1 }]
            return Cuckoo.StubNoReturnFunction(stub: manager.createStub("getLiveChannelsList(success: @escaping ([LiveChannel]) -> Void, failure: @escaping (Error) -> Void)", parameterMatchers: matchers))
        }
    }
    
    struct __VerificationProxy_LiveChannelsService: Cuckoo.VerificationProxy {
        private let manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
        
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        @discardableResult
        func getLiveChannelsList<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(success: M1, failure: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == ([LiveChannel]) -> Void, M2.MatchedType == (Error) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(([LiveChannel]) -> Void, (Error) -> Void)>] = [wrap(matchable: success) { $0.0 }, wrap(matchable: failure) { $0.1 }]
            return manager.verify("getLiveChannelsList(success: @escaping ([LiveChannel]) -> Void, failure: @escaping (Error) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class LiveChannelsServiceStub: LiveChannelsService {
    
    override func getLiveChannelsList(success: @escaping ([LiveChannel]) -> Void, failure: @escaping (Error) -> Void) {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
}

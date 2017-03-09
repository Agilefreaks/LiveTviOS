// MARK: - Mocks generated from file: LiveTV/Scenes/LiveChannelsList/LiveChannelsService.swift at 2017-03-09 08:46:59 +0000

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

// MARK: - Mocks generated from file: LiveTV/Scenes/LiveChannelsList/LiveChannelsRouter.swift at 2017-03-09 08:46:59 +0000

//
//  LiveChannelsRouter.swift
//  LiveTV
//
//  Created by Mihai Pantiru on 06/03/2017.
//  Copyright (c) 2017 AgileFreaks. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import Cuckoo
@testable import LiveTV

import UIKit

class MockLiveChannelsRouterInput: LiveChannelsRouterInput, Cuckoo.Mock {
    typealias MocksType = LiveChannelsRouterInput
    typealias Stubbing = __StubbingProxy_LiveChannelsRouterInput
    typealias Verification = __VerificationProxy_LiveChannelsRouterInput
    let manager = Cuckoo.MockManager()
    
    private var observed: LiveChannelsRouterInput?
    
    func spy(on victim: LiveChannelsRouterInput) -> Self {
        observed = victim
        return self
    }
    
    struct __StubbingProxy_LiveChannelsRouterInput: Cuckoo.StubbingProxy {
        private let manager: Cuckoo.MockManager
        
        init(manager: Cuckoo.MockManager) {
            self.manager = manager
        }
    }
    
    struct __VerificationProxy_LiveChannelsRouterInput: Cuckoo.VerificationProxy {
        private let manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
        
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    }
}

class LiveChannelsRouterInputStub: LiveChannelsRouterInput {
}

class MockLiveChannelsRouter: LiveChannelsRouter, Cuckoo.Mock {
    typealias MocksType = LiveChannelsRouter
    typealias Stubbing = __StubbingProxy_LiveChannelsRouter
    typealias Verification = __VerificationProxy_LiveChannelsRouter
    let manager = Cuckoo.MockManager()
    
    private var observed: LiveChannelsRouter?
    
    func spy(on victim: LiveChannelsRouter) -> Self {
        observed = victim
        return self
    }
    
    override var viewController: LiveChannelsViewController? {
        get {
            return manager.getter("viewController", original: observed.map { o in return { () -> LiveChannelsViewController? in o.viewController } })
        }
        set {
            manager.setter("viewController", value: newValue, original: observed != nil ? { self.observed?.viewController = $0 } : nil)
        }
    }
    
    struct __StubbingProxy_LiveChannelsRouter: Cuckoo.StubbingProxy {
        private let manager: Cuckoo.MockManager
        
        init(manager: Cuckoo.MockManager) {
            self.manager = manager
        }
        
        var viewController: Cuckoo.ToBeStubbedProperty<LiveChannelsViewController?> {
            return Cuckoo.ToBeStubbedProperty(manager: manager, name: "viewController")
        }
    }
    
    struct __VerificationProxy_LiveChannelsRouter: Cuckoo.VerificationProxy {
        private let manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
        
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        var viewController: Cuckoo.VerifyProperty<LiveChannelsViewController?> {
            return Cuckoo.VerifyProperty(manager: manager, name: "viewController", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
    }
}

class LiveChannelsRouterStub: LiveChannelsRouter {
    
    override var viewController: LiveChannelsViewController? {
        get {
            return DefaultValueRegistry.defaultValue(for: (LiveChannelsViewController?).self)
        }
        set {
        }
    }
}

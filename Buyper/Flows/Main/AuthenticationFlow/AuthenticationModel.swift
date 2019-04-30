//
//  AuthenticationModel.swift
//  Buyper
//
//  Created by Ruslan Popesku on 4/30/19.
//  Copyright © 2019 Buyper. All rights reserved.
//

import RxSwift
import Core
import RxRealm
import RxCocoa

final class AuthenticationModel: EventNode, HasDisposeBag {
    
    // MARK: - Properties.
    
    let requestStateObservable = PublishSubject<RequestState>()
    
//    private let userSession: UserSessionType
//    private let userService: UserService
    
    // MARK: - Init.
    
    init(_ parent: EventNode) {//, userSession: UserSessionType, userService: UserService) {
//        self.userSession = userSession
//        self.userService = userService
        
        super.init(parent: parent)
        
        initializeBindings()
    }
    
    // MARK: - Private Method.
    
    private func initializeBindings() {
        
    }
    
}

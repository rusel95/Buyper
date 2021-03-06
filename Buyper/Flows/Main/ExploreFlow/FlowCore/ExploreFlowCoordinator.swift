//
//  ListFlowCoordinator.swift
//  Buyper
//
//  Created by Ruslan Popesku on 4/29/19.
//  Copyright © 2019 Buyper. All rights reserved.
//

import Swinject
import SwinjectAutoregistration
import Core

enum ExploreNavigationEvent: Event {

}

final class ExploreFlowCoordinator: EventNode, FlowCoordinator {
    
    weak var containerViewController: UIViewController?
    private let container: Container
    
    private var rootViewController: ExploreViewController?
    
    init(parent: EventNode, container: Container) {
        self.container = Container(parent: container)
        
        super.init(parent: parent)
        
        ExploreFlowAssembly().assemble(container: self.container)
        addHandlers()
    }
    
    func addHandlers() {
        addHandler { [weak self] (event: ExploreNavigationEvent) in
            self?.handle(event)
        }
    }
    
    private func handle(_ event: ExploreNavigationEvent) {
        switch event {
        
        }
    }
    
    func createFlow() -> UIViewController {
        let controller: ExploreViewController = container.autoresolve(argument: self)
        controller.title = L10n.exploreTabTitle
        rootViewController = controller
        
        return controller
    }
    
}

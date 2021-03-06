//
//  MapFlowAssembly.swift
//  Buyper
//
//  Created by Ruslan Popesku on 4/30/19.
//  Copyright © 2019 Buyper. All rights reserved.
//

import Swinject
import SwinjectAutoregistration
import Core
import RxCocoa

final class MapFlowAssembly: Assembly {
    
    func assemble(container: Container) {
        
        container
            .register(MapViewController.self) { (_, parent: EventNode) in
                let model = MapModel(parent: parent)
                let viewController = StoryboardScene.Map.mapViewController.instantiate()
                viewController.viewModel = MapViewModel(model: model)
                
                return viewController
            }
            .inObjectScope(.transient)
        
    }
}

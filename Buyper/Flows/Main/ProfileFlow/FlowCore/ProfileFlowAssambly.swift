//
//  ProfileFlowAssambly.swift
//  Buyper
//
//  Created by Ruslan Popesku on 4/29/19.
//  Copyright © 2019 Buyper. All rights reserved.
//

import Swinject
import SwinjectAutoregistration
import Core

final class ProfileFlowAssembly: Assembly {
    
    func assemble(container: Container) {
        
        container
            .register(ProfileViewController.self) { (_, parent: EventNode) in
                let model = ProfileModel(parent: parent)
                let viewModel = ProfileViewModel(model: model)
                let controller = StoryboardScene.Profile.profileViewController.instantiate()
                controller.viewModel = viewModel
                
                return controller
            }
            .inObjectScope(.transient)
        
    }
    
}

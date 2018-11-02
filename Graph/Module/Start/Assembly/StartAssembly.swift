//
//  StartAssembly.swift
//  Graph
//
//  Created by Дементьев Степан on 24/10/2018.
//  Copyright © 2018 Дементьев Степан. All rights reserved.
//

import Foundation
import Swinject
import SwinjectStoryboard

class StartAssembly: NSObject {
    
    func assembly() -> Container {
        let container = Container()
        
        var controller: StartViewController!
        container.storyboardInitCompleted(StartViewController.self) { r, c in
            controller = c
            c.presenter = r.resolve(StartPresenterProtocol.self)
        }
        
        container.register(StartPresenterProtocol.self) { r in
            let presenter = StartPresenter()
            presenter.interactor = r.resolve(StartInteractorProtocol.self)
            presenter.router = r.resolve(StartRouterProtocol.self)
            presenter.controller = controller
            return presenter
        }
        
        container.register(StartRouterProtocol.self) { r in
            let router = StartRouter()
            router.controller = controller
            return router
        }
        
        container.register(StartInteractorProtocol.self) { r in
            let interactor = StartInteractor()
            return interactor
        }
        
        return container
    }
    
}

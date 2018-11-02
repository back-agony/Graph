//
//  GraphAssembly.swift
//  Graph
//
//  Created by Дементьев Степан on 24/10/2018.
//  Copyright © 2018 Дементьев Степан. All rights reserved.
//

import Swinject
import SwinjectStoryboard

class GraphAssembly: NSObject {
    
    func assembly(points: [PointEntity]) -> Container {
        let container = Container()

        var controller: GraphViewController!
        container.storyboardInitCompleted(GraphViewController.self) { r, c in
            controller = c
            c.presenter = r.resolve(GraphPresenterProtocol.self)
        }
        
        container.register(GraphPresenterProtocol.self) { r in
            let presenter = GraphPresenter()
            presenter.interactor = r.resolve(GraphInteractorProtocol.self)
            presenter.router = r.resolve(GraphRouterProtocol.self)
            presenter.controller = controller
            return presenter
        }
        
        container.register(GraphRouterProtocol.self) { r in
            let router = GraphRouter()
            router.controller = controller
            return router
        }
        
        container.register(GraphInteractorProtocol.self) { r in
            let interactor = GraphInteractor(points: points)
            return interactor
        }

        return container
    }
    
}

//
//  StartRouter.swift
//  Graph
//
//  Created Дементьев Степан on 23/10/2018.
//  Copyright © 2018 Дементьев Степан. All rights reserved.
//

import UIKit
import SwinjectStoryboard

class StartRouter: NSObject, StartRouterProtocol {
    var controller: StartViewController!
   
    // MARK: - Protocol
    
    func showGraph(points: [PointEntity]) {
        let storyboard = SwinjectStoryboard.create(name: "Graph",
                                                   bundle: nil,
                                                   container: GraphAssembly().assembly(points: points))
        controller.navigationController?.pushViewController(storyboard.instantiateInitialViewController()!,
                                                            animated: true)
    }
}

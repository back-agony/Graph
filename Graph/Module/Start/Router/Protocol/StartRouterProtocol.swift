//
//  StartRouterProtocol.swift
//  Graph
//
//  Created Дементьев Степан on 23/10/2018.
//  Copyright © 2018 Дементьев Степан. All rights reserved.
//

import Foundation

protocol StartRouterProtocol {
    
    var controller: StartViewController! { get }
    
    func showGraph(points: [PointEntity]) 
}

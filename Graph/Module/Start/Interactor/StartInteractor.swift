//
//  StartInteractor.swift
//  Graph
//
//  Created Дементьев Степан on 23/10/2018.
//  Copyright © 2018 Дементьев Степан. All rights reserved.
//

import UIKit

class StartInteractor: NSObject, StartInteractorProtocol  {
    
    private let maxRand = 1000.0
    private let minRand = -1000.0
    
    // MARK: - Protocol
    
    func randomPoints (_ count: Int) -> [PointEntity] {
        var i = 0
        var x = 0.0
        var y = 0.0
        var points: [PointEntity] = []
        while i < count {
            i += 1
            x = Double.random(in: minRand...maxRand)
            y = Double.random(in: minRand...maxRand)
            points.append(PointEntity(JSON: ["x" : x, "y" : y])!)
        }
        return points
    }
    
}

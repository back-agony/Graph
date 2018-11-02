//
//  PointEntity.swift
//  Graph
//
//  Created by Дементьев Степан on 25/10/2018.
//  Copyright © 2018 Дементьев Степан. All rights reserved.
//

import Foundation
import ObjectMapper

class PointEntity: NSObject, Mappable {
    
    var x: Double!
    var y: Double!
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        x   <- map["x"]
        y   <- map["y"]
    }
}

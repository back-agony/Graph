//
//  GraphPresenterProtocol.swift
//  Graph
//
//  Created Дементьев Степан on 23/10/2018.
//  Copyright © 2018 Дементьев Степан. All rights reserved.
//

import Foundation
import Charts

protocol GraphPresenterProtocol {
    
    var controller: GraphControllerProtocol! { get }
    
    func getData() -> ChartData

}

//
//  GraphPresenter.swift
//  Graph
//
//  Created Дементьев Степан on 23/10/2018.
//  Copyright © 2018 Дементьев Степан. All rights reserved.
//

import UIKit
import Charts

class GraphPresenter: NSObject, GraphPresenterProtocol {
    
    weak var controller: GraphControllerProtocol!
    var router: GraphRouterProtocol!
    var interactor: GraphInteractorProtocol!
    
    // MARK: - Protocol
    
    func getData() -> ChartData {
        return interactor.getData()
    }
    
}


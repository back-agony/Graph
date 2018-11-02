//
//  StartPresenter.swift
//  Graph
//
//  Created Дементьев Степан on 23/10/2018.
//  Copyright © 2018 Дементьев Степан. All rights reserved.
//

import UIKit

class StartPresenter: NSObject, StartPresenterProtocol {
    
    weak var controller: StartControllerProtocol!
    var router: StartRouterProtocol!
    var interactor: StartInteractorProtocol!
    
    func goRandom(_ count: Int) {
        if count > 0 {
            router.showGraph(points: interactor.randomPoints(count))
        } else {
            self.controller.showError("Введите значение больше нуля")
        }
    }
}


//
//  StartPresenterProtocol.swift
//  Graph
//
//  Created Дементьев Степан on 23/10/2018.
//  Copyright © 2018 Дементьев Степан. All rights reserved.
//

import Foundation

protocol StartPresenterProtocol {
    
    var controller: StartControllerProtocol! { get }
    
    func goRandom(_ count: Int)

}

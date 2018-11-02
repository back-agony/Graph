//
//  StartControllerProtocol.swift
//  Graph
//
//  Created Дементьев Степан on 23/10/2018.
//  Copyright © 2018 Дементьев Степан. All rights reserved.
//

import Foundation
import UIKit

protocol StartControllerProtocol: AnyObject {
    
    var presenter: StartPresenterProtocol! { get }
    
    func showError(_ error: String)
    func startLoad()
    func stopLoad()
    
}

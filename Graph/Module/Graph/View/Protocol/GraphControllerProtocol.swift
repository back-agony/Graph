//
//  GraphControllerProtocol.swift
//  Graph
//
//  Created Дементьев Степан on 23/10/2018.
//  Copyright © 2018 Дементьев Степан. All rights reserved.
//

import Foundation
import UIKit

protocol GraphControllerProtocol: AnyObject {
    
    var presenter: GraphPresenterProtocol! { get }
    
}

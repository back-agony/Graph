//
//  GraphViewController.swift
//  Graph
//
//  Created Дементьев Степан on 23/10/2018.
//  Copyright © 2018 Дементьев Степан. All rights reserved.
//

import UIKit
import Charts

class GraphViewController: UIViewController, GraphControllerProtocol {
    
    @IBOutlet weak var LineChartView: LineChartView!
    
    var presenter: GraphPresenterProtocol!
    
    // MARK: - View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        LineChartView.data = presenter.getData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
}

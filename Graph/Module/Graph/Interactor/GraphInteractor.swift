//
//  GraphInteractor.swift
//  Graph
//
//  Created Дементьев Степан on 23/10/2018.
//  Copyright © 2018 Дементьев Степан. All rights reserved.
//

import UIKit
import Charts

class GraphInteractor: NSObject, GraphInteractorProtocol  {
    
    private var points = [ChartDataEntry]()
    private var chartData: ChartData
    
    init(points: [PointEntity]) {
        let points = points.sorted(by: { $0.x < $1.x })
        for point in points {
            let value = ChartDataEntry(x: point.x, y: point.y)
            self.points.append(value)
        }
        
        let line = LineChartDataSet(values: self.points, label: "Точки")
        chartData = LineChartData()
        chartData.addDataSet(line)
    }
    
    // MARK: - Protocol
    
    func getData() -> ChartData {
        return chartData
    }
}

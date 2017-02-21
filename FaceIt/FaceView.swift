//
//  FaceView.swift
//  FaceIt
//
//  Created by levanha711 on 2017/02/21.
//  Copyright © 2017 BlueStanford. All rights reserved.
//

import UIKit

class FaceView: UIView {
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect)
    {
        let skullRadius = min(bounds.size.width, bounds.size.height) / 2
        let skullCenter = CGPoint(x: bounds.midX, y: bounds.midY)
        
        let skull = UIBezierPath(arcCenter: skullCenter, radius: skullRadius,
                                 startAngle: 0.0, endAngle: CGFloat(2 * M_PI), clockwise: false)
        skull.lineWidth = 5.0
        UIColor.blue.set()
        skull.stroke()
        
    }

}

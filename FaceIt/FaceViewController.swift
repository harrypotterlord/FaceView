//
//  ViewController.swift
//  FaceIt
//
//  Created by levanha711 on 2017/02/21.
//  Copyright © 2017 BlueStanford. All rights reserved.
//

import UIKit

class FaceViewController: UIViewController {

    var expression: FacialExpression = FacialExpression(eyes: .Closed,
                                                        eyeBrows: .Normal,
                                                        mouth: .Grin) {
        didSet {
            updateUI()
        }
    }
    
    private var mouthCurvatures = [FacialExpression.Mouth.Frown: -1,
                                   .Grin: 0.5,
                                   .Smile: 1.0,
                                   .Smirk: -0.5,
                                   .Neutral: 0.0]
    private var eyeBrowTilts = [FacialExpression.EyeBrows.Relaxed: 0.5,
                                   .Furrowed: -0.5,
                                   .Normal: 0.0]
    
    private func updateUI() {
        switch expression.eyes {
        case .Open: faceView.eyesOpen = true
        case .Closed: faceView.eyesOpen = false
        case .Squinting: faceView.eyesOpen = false
        }
        
        faceView.mouthCurvature = mouthCurvatures[expression.mouth] ?? 0.0
        faceView.eyeBrowTilt = eyeBrowTilts[expression.eyeBrows] ?? 0.0
    }
    
    @IBOutlet weak var faceView: FaceView! {
        didSet {
            updateUI()
        }
    }
    

}


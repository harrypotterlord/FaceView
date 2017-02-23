//
//  EmotionsVC.swift
//  FaceIt
//
//  Created by levanha711 on 2017/02/23.
//  Copyright © 2017 BlueStanford. All rights reserved.
//

import Foundation
import UIKit

class EmotionsVC: UIViewController {
    
    private let emotionalFaces: Dictionary<String, FacialExpression> = [
        "angry": FacialExpression(eyes: .Closed, eyeBrows: .Furrowed, mouth: .Frown),
        "happy": FacialExpression(eyes: .Open, eyeBrows: .Normal, mouth: .Smile),
        "worried": FacialExpression( eyes: .Open, eyeBrows: .Relaxed, mouth: .Smirk),
        "mischievious": FacialExpression( eyes: .Open, eyeBrows: .Furrowed, mouth: .Grin)
    ]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination
        if let faceVC = destinationVC as? FaceViewController {
            if let identifier = segue.identifier {
                if let expression = emotionalFaces[identifier] {
                    faceVC.expression = expression
                }
            }
        }
        
    }
}

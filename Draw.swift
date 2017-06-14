//
//  ViewController.swift
//  Draw
//
//  Created by Eduardo Carrasco on 6/14/17.
//  Copyright © 2017 DigiWorldRD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var plano: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func draw(_ sender: UIButton) {
        let objRender = UIGraphicsImageRenderer(size: CGSize(width: self.plano.frame.width, height: self.plano.frame.height))
        
        let draw = objRender.image(actions: {
            dw in
            
            dw.cgContext.setStrokeColor(UIColor(red: CGFloat(21/255.0), green: CGFloat(125/255.0), blue: CGFloat(251/255.0), alpha: CGFloat(0.8)).cgColor)
            
            dw.cgContext.setLineWidth(CGFloat(12))
            
            dw.cgContext.move(to: CGPoint(x: 20, y: 20))
            dw.cgContext.addLine(to: CGPoint(x: 80, y: 300))
            
            dw.cgContext.setShadow(offset: CGSize(width: 0, height: 0), blur: 7, color: UIColor(red: CGFloat(21/255.0), green: CGFloat(125/255.0), blue: CGFloat(252/255.0), alpha: CGFloat(1)).cgColor)
            
            dw.cgContext.strokePath()
        })
        
        self.plano.addSubview(UIImageView.init(image: draw))
    }
    
    @IBAction func erase(_ sender: UIButton) {
        
        if let rm = self.plano.subviews.last{
            rm.removeFromSuperview()
        }
    }
    
}

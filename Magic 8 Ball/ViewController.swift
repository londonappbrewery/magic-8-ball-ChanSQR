//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Chan Chan on 5/30/17.
//  Copyright © 2017 ChanSQR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallnumber: Int = 0
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]

    @IBOutlet weak var ballImageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBallImages()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPress(_ sender: UIButton) {
        
        updateBallImages()
        
    }
    
    func updateBallImages () {
        randomBallnumber = Int(arc4random_uniform(5))
        
        ballImageview.image = UIImage(named: ballArray[randomBallnumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateBallImages()
        
    }

}


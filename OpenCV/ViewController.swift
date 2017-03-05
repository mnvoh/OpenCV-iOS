//
//  ViewController.swift
//  OpenCV
//
//  Created by Milad Nozari on 3/4/17.
//  Copyright © 2017 Nozary. All rights reserved.
//

import UIKit

class ViewController: UIViewController, OpenCVCamDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    var openCVWrapper: OpenCVWrapper!
    
    var lastTimeSet: Double = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        openCVWrapper = OpenCVWrapper()
        openCVWrapper.setDelegate(self)
    }

    func imageProcessed(_ image: UIImage) {
        DispatchQueue.main.async {
            self.imageView.image = image
        }
    }
    
    @IBAction func start(_ button: UIButton) {
        openCVWrapper.start()
    }
    
    @IBAction func stop(_ button: UIButton) {
        openCVWrapper.stop()
    }
}


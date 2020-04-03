//
//  ViewControllerB.swift
//  DelegationPatterDemo
//
//  Created by apple on 03/04/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

protocol ViewControllerBDelegate: AnyObject {
    func changeColor(color: UIColor)
}

class ViewControllerB: UIViewController {
    
    weak var delegate:ViewControllerBDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onTapOfRed(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.red
        delegate?.changeColor(color: UIColor.red)
    }
    
    @IBAction func onTapOfBlue(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.blue
        delegate?.changeColor(color: UIColor.blue)
    }
    
    @IBAction func onTapOfDismiss(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

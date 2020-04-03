//
//  ViewControllerA.swift
//  DelegationPatterDemo
//
//  Created by apple on 03/04/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewControllerA: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.backgroundColor = UIColor.white
    }
    
    @IBAction func onTapOfGotoButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "viewControllerB") as? ViewControllerB
        vc?.delegate = self
        self.present(vc!, animated: true, completion: nil)
        
    }
}

extension ViewControllerA:ViewControllerBDelegate{
    func changeColor(color: UIColor) {
        self.view.backgroundColor = color
    }
}

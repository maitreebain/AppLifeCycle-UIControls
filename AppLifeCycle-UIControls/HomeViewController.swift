//
//  ViewController.swift
//  AppLifeCycle-UIControls
//
//  Created by Maitree Bain on 11/8/19.
//  Copyright © 2019 Maitree Bain. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    // 1 - gets called once, gets called when the app first launches
    // when that view controller's view is presented to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("hvc - viewDidLoad")
    }
    
    //2
    //gets called everytime the view is presented
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("hvc - viewWillAppear")
    }
    
    //3
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("hvc - viewDidAppear")
    }
    
    //4
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("hvc - viewWillDisappear")
    }
    
    //5
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("hvc - viewDidDisappear")
    }
}


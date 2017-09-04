//
//  LeagueVC.swift
//  Swooosh
//
//  Created by Dan Lindsay on 2017-09-04.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
}

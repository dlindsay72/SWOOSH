//
//  LeagueVC.swift
//  Swooosh
//
//  Created by Dan Lindsay on 2017-09-04.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    @IBOutlet weak var nextBtn: BorderButton!
    @IBOutlet weak var mensBtn: BorderButton!
    @IBOutlet weak var womensBtn: BorderButton!
    @IBOutlet weak var coedBtn: BorderButton!
    
    //MARK: - Properties
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    //MARK: - IBActions
    
    @IBAction func nextBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
        
    }
    
    @IBAction func mensBtnTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func womensBtnTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func coedBtnTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
        
    }
    
    
    
}

//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Tomahawk Africa Tindo on 8/25/15.
//  Copyright (c) 2015 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation
import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource {
    
    var history: [RPSMatch] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func returnToHome(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("historyCell") as! UITableViewCell
        let match = history[indexPath.row]
        let winner = match.winner
        let loser = match.loser
        cell.textLabel?.text = "\(winner.description) Won"
        if match.p1 == match.p2 {
            cell.textLabel?.text = "\(winner.description) Ties \(loser.description)"
        }
        cell.imageView?.image = imageForMatch(match)
        cell.backgroundColor = UIColor.greenColor()
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
    
    func imageForMatch(match: RPSMatch) -> UIImage {
        
        var name = ""
        
        switch (match.winner) {
        case .Rock:
            name = "RockCrushesScissors"
        case .Paper:
            name = "PaperCoversRock"
        case .Scissors:
            name = "ScissorsCutPaper"
        }
        
        if match.p1 == match.p2 {
            name = "itsATie"
        }
        return UIImage(named: name)!
    }
}

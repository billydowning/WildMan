//
//  ResultsViewController.swift
//  WildMan
//
//  Created by William Downing on 2/14/21.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func newGamePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

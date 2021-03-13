//
//  ViewController.swift
//  studentSelector
//
//  Created by Tiger Coder on 3/8/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var studentDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func generateStudent(_ sender: UIButton) {
        var studentSelected = "Joe"
        studentDisplay.text = studentSelected
    }
    
    @IBAction func editList(_ sender: UIButton) {
        performSegue(withIdentifier: "goToEdit", sender: nil)
    }
    
}


//
//  ViewController.swift
//  studentSelector
//
//  Created by Tiger Coder on 3/8/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var studentDisplay: UILabel!
    
    var classList = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func generateStudent(_ sender: UIButton) {
        let x = Int.random(in: 0...(classList.count-1))
        let studentSelected = classList[x]
        studentDisplay.text = studentSelected
    }
    
    @IBAction func editList(_ sender: UIButton) {
        performSegue(withIdentifier: "goToEdit", sender: nil)
    }
    
    @IBAction func unwind(_ seg: UIStoryboardSegue){
        let classNames = seg.source as! ViewController2
        classList = classNames.studentList
    }

    
}


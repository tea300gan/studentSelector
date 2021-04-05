//
//  ViewController.swift
//  studentSelector
//
//  Created by Tiger Coder on 3/8/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var studentDisplay: UILabel!
    
    var classList = ["Braddly", "Emma", "Cooper", "Nick"]
    
    var usedList = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func generateStudent(_ sender: UIButton) {
        var go = true
        while go == true {
            if(usedList.count == classList.count){
                usedList = [String]()
            }
            let studentSelected = classList[Int.random(in: 0...(classList.count-1))]
            if(usedList.contains(studentSelected) == false){
                studentDisplay.text = studentSelected
                usedList.append(studentSelected)
                go = false
            }
        }
    }
    
    @IBAction func editList(_ sender: UIButton) {
        performSegue(withIdentifier: "goToEdit", sender: nil)
    }
    
    @IBAction func unwind(_ seg: UIStoryboardSegue){
        let classNames = seg.source as! ViewController2
        classList = classNames.studentList
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let nvc = segue.destination as! ViewController2
        nvc.studentList = classList
    }
    
}


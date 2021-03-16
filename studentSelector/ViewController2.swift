//
//  ViewController2.swift
//  studentSelector
//
//  Created by Tiger Coder on 3/10/21.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var newEntery: UITextField!
    
    var studentList = ["Braddly", "Emma", "Cooper", "Nick"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addName(_ sender: UIButton) {
        studentList.append(String(newEntery.text!))
    }
    
    
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

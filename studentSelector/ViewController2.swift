//
//  ViewController2.swift
//  studentSelector
//
//  Created by Tiger Coder on 3/10/21.
//

import UIKit

class ViewController2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var newEntery: UITextField!
    @IBOutlet weak var listDisplay: UITableView!
    
    var studentList = ["Braddly", "Emma", "Cooper", "Nick"]
    
    let defults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listDisplay.delegate = self
        listDisplay.dataSource = self
        if let list = defults.object(forKey: "students"){
            studentList = list as! [String]
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addName(_ sender: UIButton) {
        var check = "yes"
        for index in 0...studentList.count-1{
            if(newEntery.text == studentList[index]){
                check = "no"
            }
        }
        if(check == "yes"){
            studentList.append(newEntery.text!)
            listDisplay.reloadData()
            newEntery.text = ""
        }  else{
            let alert = UIAlertController(title: "Error", message: "This item already exists.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
            newEntery.text = ""
        }
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        defults.set(studentList, forKey: "students")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = studentList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if(editingStyle == .delete){
            studentList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
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

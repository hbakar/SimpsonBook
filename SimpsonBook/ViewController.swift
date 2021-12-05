//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Hüseyin BAKAR on 4.12.2021.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    var simpsonArr = [Simpson]()
    
    var chosenSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homer = Simpson(nameInit: "Homer Simpson", jobInit: "Nuclear Safety", imageInit: UIImage(named: "homer")!)
        
        let bart = Simpson(nameInit: "Bart Simpson", jobInit: "Student", imageInit: UIImage(named: "bart")!)
        
        let maggie = Simpson(nameInit: "Maggie Simpson", jobInit: "Baby", imageInit: UIImage(named: "maggie")!)
        
        let marge = Simpson(nameInit: "Marge Simpson", jobInit: "Mom", imageInit: UIImage(named: "marge")!)
        
        simpsonArr.append(homer)
        simpsonArr.append(bart)
        simpsonArr.append(maggie)
        simpsonArr.append(marge)
       
        print("Simpson Ailesi Son hali v3")
    }
}


extension ViewController : UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text =  self.simpsonArr[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.chosenSimpson = simpsonArr[indexPath.row]
        
       performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"
        {
            let vc = segue.destination as? DetailsVC
            vc?.chosenSimpson = self.chosenSimpson
        }
    }
}

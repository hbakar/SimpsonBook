//
//  DetailsVC.swift
//  SimpsonBook
//
//  Created by Hüseyin BAKAR on 4.12.2021.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    
    @IBOutlet var imageView: UIImageView!
    
    
    var chosenSimpson : Simpson?
    var image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.imageView.image = chosenSimpson?.image
        self.jobLabel.text = chosenSimpson?.job
        self.nameLabel.text = chosenSimpson?.name
    }

}

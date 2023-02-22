//
//  TwoTruthsAndLieViewController.swift
//  Family Introduction
//
//  Created by Paige Stephenson on 2/21/23.
//

import UIKit

class TwoTruthsAndLieViewController: UIViewController {
    
    var selectedFamilyMember: FamilyMember?
    
    @IBOutlet weak var fact1: UIButton!
    @IBOutlet weak var fact2: UIButton!
    @IBOutlet weak var fact3: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.isHidden = true
        // Do any additional setup after loading the view.
        
        guard let selectedFamilyMember else {return}
        
        fact1.setTitle(selectedFamilyMember.truth1, for: .normal)
        fact2.setTitle(selectedFamilyMember.truth2, for: .normal)
        fact3.setTitle(selectedFamilyMember.lie, for: .normal)
    }
    
    
    @IBAction func firstFactButton(_ sender: Any) {
        resultLabel.isHidden = false
        resultLabel.text = "That isn't the lie. You probably don't know them very well. "
    }
    
    @IBAction func secondFactButton(_ sender: Any) {
        resultLabel.isHidden = false
        resultLabel.text = "That isn't the lie. You probably don't know them very well."
    }
    
    @IBAction func thirdFactButton(_ sender: Any) {
        resultLabel.isHidden = false
        resultLabel.text = "You must know them pretty well to choose this answer"
    }
    
}




//
//  FamilyButtonViewController.swift
//  Family Introduction
//
//  Created by Paige Stephenson on 2/22/23.
//

import UIKit

class FamilyButtonViewController: UIViewController {
    
    var person: FamilyMember?
    
    @IBOutlet weak var Ryan: UIButton!
    @IBOutlet weak var Wesley: UIButton!
    @IBOutlet weak var Peggy: UIButton!
    @IBOutlet weak var Cat: UIButton!
    @IBOutlet weak var Ellie: UIButton!
    @IBOutlet weak var Paige: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func personButton(_ sender: UIButton) {
        switch sender {
        case Ryan:
            person = FamilyMember(truth1: "Prefers to be bald", truth2: "Is allergic to dogs", lie: "Mountain bikes all the time")
        case Wesley:
            person = FamilyMember(truth1: "Shot arrows in a house", truth2: "Is afraid of beetles", lie: "Hates shaving")
        case Peggy:
            person = FamilyMember(truth1: "Her favorite chore is laundry", truth2: "Never pays full price for anything", lie: "Is a slow driver")
        case Cat:
            person = FamilyMember(truth1: "Eats bread and peanut butter", truth2: "Never eats a full mouse body", lie: "Wouuld sell her soul for treats")
        case Ellie:
            person = FamilyMember(truth1: "Went from a 9% to a 95% the morning of the dead day", truth2: "Loves all animals", lie: "Doesn't like mac and cheese")
        case Paige:
            person = FamilyMember(truth1: "Buys a new waterbottle every 3 months", truth2: "Didn't start skiing until this year", lie: "Hates cats")
        default:
            break
    }
        performSegue(withIdentifier: "About", sender: self)
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? TwoTruthsAndLieViewController {
            viewController.selectedFamilyMember = person
        }
    }
}


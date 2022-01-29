//
//  ViewController.swift
//  L29_nikolaev_HW
//
//  Created by Alexandr Nikolaev on 29.01.22.
//

import UIKit
import DropDown

class ViewController: UIViewController {
    @IBOutlet weak var dropDownContainer: UIView!
    
    let dropDown = DropDown()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        

        // The view to which the drop down will appear on
        dropDown.anchorView = dropDownContainer // UIView or UIBarButtonItem

        // The list of items to display. Can be changed dynamically
        dropDown.dataSource = [currentGroupOfStudents]
        
        
        // Action triggered on selection
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
          print("Selected item: \(item) at index: \(index)")
        }
        
        
        
    }

    @IBAction func onButtonTap(_ sender: UIButton) {
        
        dropDown.show()
    }
    
}


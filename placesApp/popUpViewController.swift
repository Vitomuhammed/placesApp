//
//  popUpViewController.swift
//  placesApp
//
//  Created by Vito Muhammed  on 4/8/22.
//

import UIKit
import RealmSwift
class popUpViewController: UIViewController {
let db = try! Realm()
    @IBOutlet weak var placeName: UITextField!
    @IBOutlet weak var descripton: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func save(_ sender: UIButton) {
        print("saving")
        dismiss(animated: true)
        
        let newMark = LandMark()
        newMark.name = placeName.text!
        newMark.des = descripton.text!
        
        try! db.write({
            db.add(newMark)
        })
        
    }

    //hey ishki im miss u to much very alot mooore than u know about me
    // im Back i love uuuuuu
    // :>>>>>>>>>>>>>. 3>>>>>>>>

    
    
}

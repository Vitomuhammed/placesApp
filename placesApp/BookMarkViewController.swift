//
//  BookMarkViewController.swift
//  placesApp
//
//  Created by Vito Muhammed  on 4/8/22.
//

import UIKit

class BookMarkViewController: UIViewController {
    @IBOutlet weak var BookMarksTB: UITableView!
    var locationa = ["iQ", "RU" , "SU" , "IN"]
    override func viewDidLoad() {
        super.viewDidLoad()
        BookMarksTB.delegate = self
        BookMarksTB.dataSource = self
        // Do any additional setup after loading the view.
        BookMarksTB.register(UINib(nibName:"PlacesCiel" , bundle: nil), forCellReuseIdentifier: "PlacesCiel")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print(Places.shared.landmarks)
        BookMarksTB.reloadData()
    }
    
    
}

extension BookMarkViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Places.shared.landmarks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ceil = BookMarksTB.dequeueReusableCell(withIdentifier: "PlacesCiel", for: indexPath) as! PlacesCiel
        ceil.Name.text = Places.shared.landmarks[indexPath.row].name
        ceil.Time.text = DateFormatter.localizedString(from: Places.shared.landmarks[indexPath.row].time, dateStyle: .short, timeStyle: .short)
        ceil.discripton.text = Places.shared.landmarks[indexPath.row].des
        return ceil
    }
    
    
}

//
//  ViewController.swift
//  SwiftNetworkApp
//
//  Created by Kumar Mishra, R. F. on 6/9/18.
//  Copyright © 2018 Kumar Mishra, R. F. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var records: [Fact] = []

    @IBOutlet weak var recordTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        let networkManager = CountryManager()
        networkManager.getCountryList { (countries, error) in
         
            guard let lMoview = countries else {
                return
            }
        
            self.records = lMoview
            
            DispatchQueue.main.async {
                self.recordTableView.reloadData()

            }
            
        }
    }
    
    // MARK: Table delegates
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return records.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellReuseIdentifier = "reusecell"
        let cell:CustomReordsCell = (self.recordTableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! CustomReordsCell?)!
        
        let places = records[indexPath.row]
        
        if let image1 = places.imageHref{
            cell.placesView.downloadedFrom(link: image1)
        }
        cell.name.text = places.title
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    
    
    
    
    
    
    

    
    
    
   /*
    
    func test() {
        
        defer {
            print("defere in derfer")
        }
        
        let a = 5
        
        if a < 10 {
            print("a is great")
        }
        
        guard let name = nameText.text else {
            print("name has not assigned")
            return;
        }

        print("name is :", name)
        
    }
    
    
    func isValid(lName: String) -> Bool {
        
        if lName == "Rakesh" {
            return true
        }
        
        return false
    }
*/
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}





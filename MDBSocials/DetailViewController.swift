//
//  DetailViewController.swift
//  MDBSocials
//
//  Created by Edward Liu on 3/9/16.
//  Copyright © 2016 Edward Liu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var name = ""
    var date = ""
    var location = ""
    var info = ""

    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var datelabel: UILabel!
    @IBOutlet weak var locationlabel: UILabel!
    @IBOutlet weak var descriptionlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namelabel.text = name
        datelabel.text = date

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

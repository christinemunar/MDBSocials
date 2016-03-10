//
//  ViewController.swift
//  MDBSocials
//
//  Created by Edward Liu on 3/9/16.
//  Copyright © 2016 Edward Liu. All rights reserved.
//

import UIKit

var eventnames = ["bowling", "dinner", "ball"]
var dates = ["Monday", "Tuesday", "Wednesday"]

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var feedCollectionView: FeedCollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        feedCollectionView.delegate = self
        feedCollectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eventnames.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = feedCollectionView.dequeueReusableCellWithReuseIdentifier("eventcell", forIndexPath: indexPath) as! CollectionViewCell

        cell.namelabel.text = eventnames[indexPath.row]
        cell.datelabel.text = dates[indexPath.row]
        
        return cell
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier) == "toDetails" {
            let vc = segue.destinationViewController as! DetailViewController
            let row = (sender as! NSIndexPath).item
            vc.name = eventnames[row]
            vc.date = dates[row]
    
    
        }
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("toDetails", sender: indexPath)
    }
}


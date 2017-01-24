//
//  DetailViewController.swift
//  SearchBar
//
//  Created by Shinkangsan on 1/23/17.
//  Copyright © 2017 Sheldon. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    //from prev controller
    var dataModel:Model!
    
    //IBOutlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageNameLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var byLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageNameLabel.text = dataModel.imageName
        yearLabel.text = dataModel.imageYear
        byLabel.text = dataModel.imageBy
    
        imageView.image = UIImage(named: dataModel.imageName)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

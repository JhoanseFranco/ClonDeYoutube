//
//  MainViewController.swift
//  ClonDeYoutube
//
//  Created by jhoan sebastian franco cardona on 26/09/22.
//

import UIKit

class MainViewController: UIViewController {
    var rootPageViewController: RootPageViewController!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? RootPageViewController{
            rootPageViewController = destination
        }
    }
    

}

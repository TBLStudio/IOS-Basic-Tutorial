//
//  MainViewController.swift
//  TempplateWithXib
//
//  Created by Ngo Thai on 12/26/15.
//  Copyright © 2015 TBLStudio. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadA(sender: AnyObject) {
        print("Load A")
        let viewAViewController = UIViewController(nibName: "ViewAViewController", bundle: nil)
        self.navigationController?.pushViewController(viewAViewController, animated: true)
    }
    
    @IBAction func loadB(sender: AnyObject) {
        print("Load B")
        let viewBViewController = UIViewController(nibName: "ViewBViewController", bundle: nil)
        self.navigationController?.pushViewController(viewBViewController, animated: true)
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

//
//  ViewAViewController.swift
//  TempplateWithXib
//
//  Created by Ngo Thai on 12/25/15.
//  Copyright © 2015 TBLStudio. All rights reserved.
//

import UIKit

class ViewAViewController: BaseViewController {
    
    override convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        
        let nib = nibNameOrNil ?? "ViewAViewController"
        self.init(nibName: nib, bundle: nibBundleOrNil)
        
       // super.init(nibName: nib, bundle: nibBundleOrNil)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewA Loaded")
        self.navigationController?.navigationBarHidden = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadC(sender: AnyObject) {
        print("Load C")
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

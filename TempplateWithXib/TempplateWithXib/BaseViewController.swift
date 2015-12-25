//
//  BaseViewController.swift
//  TBLStudioBaseProject
//
//  Created by Thái Bô Lão on 10/16/15.
//  Copyright © 2015 TBLStudio. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    var engine = Engine.sharedInstance
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
       
    }
    
    func SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(version: String) -> Bool {
        return UIDevice.currentDevice().systemVersion.compare(version,
            options: NSStringCompareOptions.NumericSearch) != NSComparisonResult.OrderedAscending
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

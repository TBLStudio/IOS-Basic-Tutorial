//
//  ViewController.swift
//  HelloWorld
//
//  Created by Thái Bô Lão on 11/6/15.
//  Copyright © 2015 TBLStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func btnSayHelloWorld(sender: AnyObject) {
        
        let alert = UIAlertController(title: "Alert", message: "Hello World", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
        
    }

}


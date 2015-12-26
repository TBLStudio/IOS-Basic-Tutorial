//
//  MainViewController.swift
//  TempplateWithXib
//
//  Created by Ngo Thai on 12/26/15.
//  Copyright © 2015 TBLStudio. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupList()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadA(sender: AnyObject) {
        print("Load A")
        let viewAViewController = ViewAViewController(nibName: "ViewAViewController", bundle: NSBundle.mainBundle())
        self.navigationController?.pushViewController(viewAViewController, animated: true)
    }
    
    @IBAction func loadB(sender: AnyObject) {
        print("Load B")
        let viewBViewController = UIViewController(nibName: "ViewBViewController", bundle: nil)
        self.navigationController?.pushViewController(viewBViewController, animated: true)
    }
    
    func setupList() {
        
        for var i=0; i < 10; i++ {
            
            //create image view
            let itemView  = UIView()
            itemView.tag = i
            itemView.backgroundColor = UIColor.yellowColor()
            itemView.userInteractionEnabled = true
            itemView.layer.cornerRadius = 20.0
            itemView.layer.masksToBounds = true
            scrollView.addSubview(itemView)
            
            //attach tap detector
            //imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector("didTapImageView:")))
        }
        
        scrollView.backgroundColor = UIColor.greenColor()
        positionListItems()
    }
    
    //position all images inside the list
    func positionListItems() {
        let itemHeight: CGFloat = scrollView.frame.height
        let itemWidth: CGFloat = self.view.frame.width * 0.99
        
        let horizontalPadding: CGFloat = 10.0
        
        for var i=0; i < 10; i++ {
            let itemView = scrollView.viewWithTag(i)! as UIView
            itemView.frame = CGRect(
                x: CGFloat(i) * itemWidth + CGFloat(i+1) * horizontalPadding, y: 0.0,
                width: itemWidth, height: itemHeight)
        }
        
        scrollView.contentSize = CGSize(
            width: CGFloat(10) * (itemWidth + horizontalPadding) + horizontalPadding,
            height:  0)
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

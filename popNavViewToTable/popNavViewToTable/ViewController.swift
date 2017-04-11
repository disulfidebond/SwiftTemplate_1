//
//  ViewController.swift
//  popoverTest2
//
//  Created by Thor on 2/23/16.
//  Copyright © 2016 Thor. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if tmpInt.popInt.isEmpty {
            print("Empty String!")
            
        } else {
            print("String is \(tmpInt.popInt)")
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func popoverPressed(sender: UIBarButtonItem) {
        if tmpInt.popInt.isEmpty {
            print("Empty String!")
            
        } else {
            print("String is \(tmpInt.popInt)")
        }
        
        let vc = storyboard?.instantiateViewControllerWithIdentifier("popoverController") as! PopoverViewController
        vc.preferredContentSize = CGSize(width: UIScreen.mainScreen().bounds.width/2, height: 100)
        let navController = UINavigationController(rootViewController: vc)
        navController.modalPresentationStyle = UIModalPresentationStyle.Popover
        let popOver = navController.popoverPresentationController
        popOver?.delegate = self
        popOver?.barButtonItem = sender
        self.presentViewController(navController, animated: true, completion: nil)
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


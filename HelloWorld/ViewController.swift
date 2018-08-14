//
//  ViewController.swift
//  HelloWorld
//
//  Created by Francisco Andrade on 8/13/18.
//  Copyright © 2018 Francisco Andrade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloWorldButton: UIButton!
    @IBOutlet weak var hideActionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //showMessage() reacts to button click and shows a message window with one option "OK"
    @IBAction func showMessage() {
        let alertController = UIAlertController(title: "Welcome to My First App", message: "Hello World",
            preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
    
    //hideButton() hides/shows helloWorldButton when function gets called by hideActionButton
    @IBAction func hideButton() {
        if(helloWorldButton.isHidden){
            setTextButton(action: "Hide");
            helloWorldButton.isHidden=false
            self.view.backgroundColor=UIColor.white
        }else{
            helloWorldButton.isHidden=true
            self.view.backgroundColor=UIColor.green
            setTextButton(action: "Show");
        }
    }
    
    //setTextButton() sets text of button depending on helloWorldButton state
    func setTextButton(action: String){
    hideActionButton.setTitle(action+" Green Button", for: .normal)
    }
    
    
   
    
    

}


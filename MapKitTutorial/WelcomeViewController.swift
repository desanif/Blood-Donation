//
//  WelcomeViewController.swift
//  MapKitTutorial
//
//  Created by Fenil Desani on 12/4/17.
//  Copyright © 2017 Fenil Desani. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeImageView: UIImageView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Welcome"
        self.navigationController?.navigationBar.backItem?.title = ""
        
        var imagesListArray = [UIImage]()
        
        imagesListArray.append(UIImage(named: "Welcome.jpg")!)
        imagesListArray.append(UIImage(named: "Welcome2.jpg")!)
        imagesListArray.append(UIImage(named: "Welcome3.jpg")!)
        
        self.welcomeImageView.animationImages = imagesListArray
        self.welcomeImageView.animationDuration = 20.0
        self.welcomeImageView.startAnimating()
        // Do any additional setup after loading the view.
    }

    
   
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
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

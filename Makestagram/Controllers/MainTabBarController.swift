//
//  MainTabBarController.swift
//  Makestagram
//
//  Created by Youssef Elabd on 6/9/17.
//  Copyright © 2017 Youssef Elabd. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    let photoHelper = MGPhotoHelper()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoHelper.completionHandler = { image in
           PostService.create(for: image)
        }
        
        delegate = self
        
        tabBar.unselectedItemTintColor = .black

        // Do any additional setup after loading the view.
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

extension MainTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController.tabBarItem.tag == 1 {
            photoHelper.presentActionSheet(from: self)
//            print("here")
            return false
        }
        
        return true
    }
}

//
//  TabBar.swift
//  TabBar
//
//  Created by ᴀᴍ on 2018-01-18.
//  Copyright © 2018 codeabyte. All rights reserved.
//

import UIKit


class TabBar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
    class func customTabBar() -> UITabBarController {
        
        let homeVC : UIViewController = View1()
        let settingsVC : UIViewController = View1()

        
        let homeNav : UINavigationController = TabNav.init(rootViewController: homeVC)
        let settingsNav : UINavigationController = TabNav.init(rootViewController: settingsVC)

        homeNav.tabBarItem = UITabBarItem.init(title: "Home", image: Public.getImage(imageName: "home"), selectedImage: Public.getImage(imageName: "home_on"))
       
        settingsNav.tabBarItem = UITabBarItem.init(title: "home2", image: Public.getImage(imageName: "home"), selectedImage: Public.getImage(imageName: "home_on"))
     

        let tc = UITabBarController()
        tc.viewControllers = [homeNav,settingsNav];
        
        return tc
        
        
        
    }
    
    
}

class TabNav: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class Public: NSObject {
    class func getImage(imageName : NSString) -> UIImage {
        let image : UIImage = UIImage.init(named: imageName as String)!
        image.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        return image
        
    }
}




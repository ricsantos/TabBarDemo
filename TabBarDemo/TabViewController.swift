//
//  TabViewController.swift
//  TabBarDemo
//
//  Created by Ric Santos on 19/6/2024.
//

import UIKit

class TabBarController: UITabBarController {
    init() {
        super.init(nibName: nil, bundle: nil)
        
        var vcs: [UIViewController] = []
        
        let vc1 = ViewController()
        vc1.title = "VC1"
        vc1.showsNavigationBar = false
        let nc1 = NavigationController(rootViewController: vc1)
        nc1.title = "NC1"
        vcs.append(nc1)
        
        vc1.buttonHandler = {
            let vc1a = ViewController()
            vc1a.showsNavigationBar = true
            vc1a.title = "VC1a"
            nc1.pushViewController(vc1a, animated: true)
        }
        
        let vc2 = ViewController()
        vc2.title = "VC2"
        vc2.showsNavigationBar = true
        let nc2 = NavigationController(rootViewController: vc2)
        nc2.title = "NC2"
        vcs.append(nc2)
        
        self.setViewControllers(vcs, animated: false)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class NavigationController: UINavigationController {
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        
        // Override the appearance here
        //self.navigationBar.barStyle = .black
        //self.navigationBar.isTranslucent = false
        self.navigationBar.tintColor = UIColor.white
        //self.navigationBar.prefersLargeTitles = true
        
        let appearance = UINavigationBarAppearance()
        //appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.systemBlue
        //appearance.titleTextAttributes = [
        //    .foregroundColor: UIColor.green
        //]
        self.navigationBar.standardAppearance = appearance
        self.navigationBar.scrollEdgeAppearance = appearance
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

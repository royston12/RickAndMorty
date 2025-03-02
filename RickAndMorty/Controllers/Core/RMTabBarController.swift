//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Royston Vishal on 02/03/25.
//

import UIKit

class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTabs()
    }
    
    func setupTabs() {
        let characterVC = RMCharacterVC()
        let episodeVC = RMEpisodeVC()
        let locationVC = RMLocationVC()
        let settingsVC = RMSettingsVC()
        
        let nav1 = UINavigationController(rootViewController: characterVC)
        let nav2 = UINavigationController(rootViewController: episodeVC)
        let nav3 = UINavigationController(rootViewController: locationVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        nav1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person.crop.circle"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Location", image: UIImage(systemName: "map"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        viewControllers = [nav1, nav2, nav3, nav4]
    }


}


//
//  ViewController.swift
//  RickyAndMorty
//
//  Created by Royston Vishal on 14/05/24.
//

import UIKit

class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
    }
    
    
    func setupTabs() {
        let characterViewController = RMCharacterViewController()
        let episodeViewController = RMEpisodeViewController()
        let locationViewController = RMLocationViewController()
        let settingsViewController = RMSettingsViewController()
        
        characterViewController.navigationItem.largeTitleDisplayMode = .always
        episodeViewController.navigationItem.largeTitleDisplayMode = .always
        locationViewController.navigationItem.largeTitleDisplayMode = .always
        settingsViewController.navigationItem.largeTitleDisplayMode = .always
    
        let navCharacter = UINavigationController(rootViewController: characterViewController)
        let navEpisode = UINavigationController(rootViewController: episodeViewController)
        let navLocation = UINavigationController(rootViewController: locationViewController)
        let navSettings = UINavigationController(rootViewController: settingsViewController)
        
        for nav in [navCharacter, navEpisode, navLocation, navSettings] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        navCharacter.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        navEpisode.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 2)
        navLocation.tabBarItem = UITabBarItem(title: "Location", image: UIImage(systemName: "globe"), tag: 3)
        navSettings.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        setViewControllers([navCharacter, navEpisode, navLocation, navSettings], animated: true)
        
        tabBar.backgroundColor = .white
        
        
    }


}


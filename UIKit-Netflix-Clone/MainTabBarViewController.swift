//
//  MainTabBarViewController.swift
//  UIKit-Netflix-Clone
//
//  Created by Gabriel Gandur on 15/06/23.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        
        //Criando os controladores das Tabs
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        let upcomingVC = UINavigationController(rootViewController: UpcomingViewController())
        let searchVC = UINavigationController(rootViewController: SearchViewController())
        let downloadVC = UINavigationController(rootViewController: DownloadsViewController())
        
        //Setando as imagens de cada Tab Bar item
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        upcomingVC.tabBarItem.image = UIImage(systemName: "play.circle")
        searchVC.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        downloadVC.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        //Setando os nomes das Tabs
        homeVC.title = "Home"
        upcomingVC.title = "Coming Soon"
        searchVC.title = "Top Search"
        downloadVC.title = "Downloads"
        
        //Setando a tint color dos itens
        tabBar.tintColor = .label
        
        //Setando os controladores na Tab Bar
        setViewControllers([homeVC, upcomingVC, searchVC, downloadVC], animated: true)
    }
    
    
}


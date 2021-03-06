//
//  TMTabbarController.swift
//  TXBBM
//
//  Created by Baird-weng on 15/7/14.
//  Copyright (c) 2015年 Baird-weng. All rights reserved.
//

import UIKit

class TMTabbarController: UITabBarController,UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        //隐藏左边的按钮
        let baritem = UIBarButtonItem(customView: UIView())
        self.navigationItem.leftBarButtonItem = baritem
        self.delegate = self
        self.title = "技能"
        // Do any additional setup after loading the view.
    }
    
    func tabBarController(tabBarController: UITabBarController, didSelectViewController viewController: UIViewController) {
        switch viewController.tabBarItem.tag
        {
        case 0:
            self.title = "技能"
        case 1:
            self.title = "个人中心"
        default:
            self.title = "无"
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

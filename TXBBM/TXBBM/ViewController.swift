//
//  ViewController.swift
//  TXBBM
//
//  Created by Baird-weng on 15/6/30.
//  Copyright (c) 2015年 Baird-weng. All rights reserved.
//


import UIKit
//声明代理
class ViewController: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var UserNameTextField: UITextField!
    @IBOutlet weak var PassWordTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        PassWordTextfield.clearButtonMode = UITextFieldViewMode.Always
        UserNameTextField.clearButtonMode = UITextFieldViewMode.Always
        PassWordTextfield.secureTextEntry = true;
        PassWordTextfield.delegate = self
        //点击手势让键盘回收
        let tap = UITapGestureRecognizer (target: self, action:"KeyboardContraction");
        self.view .addGestureRecognizer(tap)
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func ClickLogin(sender: UIButton) {
        
        if(UserNameTextField.text == ""||PassWordTextfield.text == ""){
            SVProgressHUD .showErrorWithStatus("请输入正确的用户名或密码")
        }
        else{
            
            
        }
    }
    //延迟函数
    func hwcDelay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    //键盘回收的方法
    func KeyboardContraction(){
        UserNameTextField .resignFirstResponder()
        PassWordTextfield.resignFirstResponder()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    
}


//
//  ViewController.swift
//  getTelORMessage
//
//  Created by xie on 2017/8/18.
//  Copyright © 2017年 xie. All rights reserved.
//

import UIKit

class ViewController:UIViewController, UITableViewDelegate, UITableViewDataSource

   
{

    
    let arr = ["tel:10086","telprompt://10010","sms://10086","mailto:421482590@qq.com","http://www.baidu.com","itms-apps://","wechat://","App-Prefs:root=MUSIC","App-Prefs:root=WIFI","App-Prefs:root=STORE"]
    
    
    
    let tableView = UITableView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "跳转url"
        
        tableView.frame = self.view.bounds
        
        self.view.addSubview(tableView)
        
        tableView.delegate = self
        
        tableView.dataSource  = self
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK: - Tableview Delegate & Datasource
     func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return arr.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "MyTestCell")
        
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    


    
     internal func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
            UIApplication.shared.open(NSURL(string: arr[indexPath.row])! as URL, options: [:],
                                      completionHandler: {
                                        (success) in
            })
//             UIApplication.shared.openURL(NSURL(string: "App-Prefs:root=MUSIC") as! URL)
        
        
    }
     override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


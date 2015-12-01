//
//  ViewController.swift
//  mysina
//
//  Created by  yanglc on 15/11/30.
//  Copyright © 2015年  yanglc. All rights reserved.
//

import UIKit

class ViewController: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.tableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cl = tableView.dequeueReusableCellWithIdentifier("DD") as? MyTextItemTableViewCell;
        if(cl == nil){
            cl = MyTextItemTableViewCell();
        }
        
        if(indexPath.row == 1){
            cl?.setTex("妈妈说，女人一定要爱自己的脸，别人打你左脸，你再把右脸伸过去让他打，不然粉底不一样厚。")
        }else{
            cl?.setTex("妈妈说，女人一定要爱自己的脸")
        }
        
        
        
        return cl!;
    }
    
    
    
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        var kkk = UIFont.systemFontOfSize(20);
        var cc = [NSFontAttributeName:kkk]
        
        
        
        var tx:NSString?;
        
        if(indexPath.row == 1){
            tx = "妈妈说，女人一定要爱自己的脸，别人打你左脸，你再把右脸伸过去让他打，不然粉底不一样厚。";
            var rect =   tx!.boundingRectWithSize(CGSizeMake(320,CGFloat.max), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: cc, context: nil)
            
            return rect.height;
        }else{
            tx = "妈妈说，女人一定要爱自己的脸";
            var rect =   tx!.boundingRectWithSize(CGSizeMake(320,CGFloat.max), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: cc, context: nil)
            
            return rect.height;
        }
    }
    
    
    
    
    
    
    
    
    
    
}


//
//  MyTextItemTableViewCell.swift
//  mysina
//
//  Created by  yanglc on 15/11/30.
//  Copyright © 2015年  yanglc. All rights reserved.
//

import UIKit

class MyTextItemTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        
        
    }
    
    
    
    var textv:UILabel!;
    
    func textview()->UILabel{
        if(textv == nil){
            textv = UILabel();
            
            self.contentView.addSubview(textv);
        }
        
        return textv;
    }
    
    
    // dict用于指定字体的相关属性的字典，UIKit框架中的第一个头文件
    // context: nil
//    NSDictionary *nameDict = @{NSFontAttributeName: kNameFont};
//    CGRect nameFrame = [self.status.name boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:nameDict context:nil];
//    nameFrame.origin.x = CGRectGetMaxX(self.iconView.frame) + padding;
//    nameFrame.origin.y = padding + (self.iconView.bounds.size.height - nameFrame.size.height) * 0.5;
//    self.nameView.frame = nameFrame;

    
   public  func setTex(tx:NSString){
        
        
        
        var kkk = UIFont.systemFontOfSize(20);
        var cc = [NSFontAttributeName:kkk]
        
    
        var rect =   tx.boundingRectWithSize(CGSizeMake(320,CGFloat.max), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: cc, context: nil)
        
        var tv = textview();
    
        tv.text = tx as String;
    
    tv.numberOfLines = 0;
        tv.frame = rect;
        
        
        
        
    
        
        
        
        
        
        
    }
    

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

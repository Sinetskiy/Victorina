//
//  ViewWithButton.swift
//  Victorina
//
//  Created by administrator on 20.01.16.
//  Copyright © 2016 administrator. All rights reserved.
//

import UIKit


protocol ViewWilthButtonDelegate:class{
    func buttonWithTitlePressed(title:String)
    
}


class ViewWithButton: UIView {

    var delegate:ViewWilthButtonDelegate?
    
    @IBOutlet var topText:UILabel!
    
    @IBOutlet var imageView:UIImageView!
    
    @IBOutlet var button1:UIButton!
    @IBOutlet var button2:UIButton!
    @IBOutlet var button3:UIButton!
    @IBOutlet var button4:UIButton!
    @IBOutlet var button5:UIButton!
    @IBOutlet var button6:UIButton!
    
    @IBAction func buttonPressed(button:UIButton) {
        delegate?.buttonWithTitlePressed(button.titleForState(UIControlState.Normal)!)
    }

    func UpdateTopText(text:String){
        topText.text = text;
    }
    
    func updateImage(picture:UIImage?){
        
       if(picture == nil) {
        imageView.alpha = 0;
        return;
       }
        
        imageView.image = picture;
        imageView.alpha = 1;
    }

    func UpdateButtonsTitle(titles:[String]){
        
        for title in titles {
            print("one of titles is: \(title)");
        }
        
        let allButtons = [button1,button2,button3,button4,button5,button6]
        
        for index in 0..<titles.count  {
            let stringToAdd = titles[index];
            let buttons = allButtons[index];
            
            buttons.setTitle(stringToAdd, forState: UIControlState.Normal);        }
        
    }
    
}

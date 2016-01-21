//
//  Question.swift
//  Victorina
//
//  Created by administrator on 20.01.16.
//  Copyright © 2016 administrator. All rights reserved.
//

import UIKit

class Question {
    
    let text:String;
    let answers:[String];
    let correctAnswer:String;
    let imageName:String;
    var image:UIImage? {
        get {
            return UIImage(named: imageName)
        }
    }
    
    init(text:String,answers:[String],correctAnswer:String, imageName:String){
        self.text = text;
        self.answers = answers;
        self.correctAnswer = correctAnswer;
        self.imageName = imageName;
    }
    
    func isCorrectAnswer(variant:String) -> Bool {
        return correctAnswer == variant;
    }
    
}

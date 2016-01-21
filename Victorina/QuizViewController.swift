//
//  QuizViewController.swift
//  Victorina
//
//  Created by administrator on 20.01.16.
//  Copyright © 2016 administrator. All rights reserved.
//

import UIKit


class QuizViewController: UIViewController {

    @IBOutlet weak var quizView: ViewWithButton!
    
    var quiestion:Question?
    
    
    override func viewDidLoad() {
        super.viewDidLoad();
        setup()
    }
  
    func setup() {
        self.view.backgroundColor = UIColor.orangeColor()
        setupModel()
        
        setupViewWithQuestion(quiestion!)
    }
    
    func setupModel() {
        quiestion = Question(text: "Kak zvali nynu Pushkina?"
            , answers: ["Vasy", "Petya", "Kolya", "Slava"]
            , correctAnswer: "Petya"
            , imageName: "1")
    }
    
    func setupViewWithQuestion(aQuestion:Question){
        quizView.UpdateTopText(aQuestion.text)
        quizView.updateImage(aQuestion.image)
        quizView.UpdateButtonsTitle(aQuestion.answers)
        
        quizView.delegate = self
    }
}

extension QuizViewController:ViewWilthButtonDelegate {
    func buttonWithTitlePressed(title: String) {
        if(quiestion!.isCorrectAnswer(title)) {
            print("You are winer")
            return
        }
        print("Sorry.Go back to school")
     }
}

//
//  ViewController.swift
//  Qna
//
//  Created by SHIH-YING PAN on 2018/5/15.
//  Copyright © 2018 SHIH-YING PAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var choiceLabels: [UILabel]!

    @IBOutlet weak var gradeView: UIView!
    
    var questionNumber=0
    var grade=0
    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        let question=questions[0]
        let number=sender.tag
        if question.choice[number]==question.answer{
            grade=grade+10
        }
        
        questionNumber=questionNumber+1
    
    if questionNumber == questions.count {
    gradeView.isHidden = false
    } else {
        let newQuestion = questions[questionNumber]
        questionLabel.text=newQuestion.description
        var i=0
        for label in choiceLabels {
            label.text=newQuestion.choice[i]
            i=i+1
        }
        }
        
    }
    
    var questions = [Question]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        gradeView.isHidden = true
        
        questions.append(Question(description: "小橘是什麼星座?", answer: "獅子座", choice: ["牡羊座","獅子座","處女座"]))
        
        questions.append(Question(description: "小橘最喜歡的食物?", answer: "優格", choice: ["優格","牛排","炒麵麵包"]))
        
        let question3 = Question(description: "小橘今年幾歲了?", answer: "9", choice: ["5","7","9"])
        questions.append(question3)
        
        questionLabel.text=questions[0].description
        var i=0
        for label in choiceLabels {
            label.text=questions[0].choice[i]
            i=i+1
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


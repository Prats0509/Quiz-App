//
//  ViewController.swift
//  Quiz
//
//
//

import UIKit

class ViewController: UIViewController {
    //@IBOutlet weak var ProgressBar: UIProgressView!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    
    @IBOutlet weak var QuestionLabel: UILabel!
    
    @IBOutlet weak var Option1Button: UIButton!
   
    
    @IBOutlet weak var Option2Button: UIButton!
    
    
   @IBOutlet weak var Option3Button: UIButton!
    
    
    @IBOutlet weak var LabelQuestionNumber: UILabel!
    
    
    @IBOutlet weak var LabelScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    var quiz = QuizBrain()
    
    @IBAction func AnswerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.configuration?.title
       
        
        if quiz.checkAnswer(userAnswer!){

            sender.backgroundColor = UIColor.green
        }else{

            sender.backgroundColor = UIColor.red
        }
        
        
        Timer.scheduledTimer(timeInterval:0.5 , target: self, selector: #selector(updateUI),userInfo:nil, repeats: false)
        
        
        quiz.nextQuestion()
        
        //  updateUI()
    }
   
    
    
    @objc func updateUI(){
        
        QuestionLabel.text = quiz.getQuestionText()
        
        Option1Button.configuration?.title = quiz.getAnswersOption(0)
        Option2Button.configuration?.title = quiz.getAnswersOption(1)
        Option3Button.configuration?.title = quiz.getAnswersOption(2)
        
        
        
        Option1Button.backgroundColor = UIColor.gray
        Option2Button.backgroundColor = UIColor.gray
        Option3Button.backgroundColor = UIColor.gray
        
        progressBar.progress = quiz.getProgress();
       LabelQuestionNumber.text = "Question Number : \(quiz.getQuestionNumber())"
        LabelScore.text="Score : \(quiz.getScore())"
        
        
    }
    
}


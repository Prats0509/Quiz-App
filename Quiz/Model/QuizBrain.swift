//
//  QuizBrain.swift
//  Quiz
//
//  Created by english on 2024-10-04.
//

import Foundation

struct QuizBrain{
    var questionNumber = 0
    var score = 0
    
    let arrayQuiz = [Question(q: "What does HTML stand for?", o: ["Hyper Text Markup Language", "High-Level Text Markup Language", "Hyperlinks and Text Markup Language", "None of the above"], a: "Hyper Text Markup Language"),
                     Question(q: "Which of the following is a programming language?", o: ["HTML", "CSS", "JavaScript", "All of the above"], a: "All of the above"),
                     Question(q: "What does CSS stand for?", o: ["Cascading Style Sheets", "Creative Style Systems", "Colorful Style Sheets", "None of the above"], a: "Cascading Style Sheets"),
                     Question(q: "Which company developed the Java programming language?", o: ["Microsoft", "Oracle", "Sun Microsystems", "IBM"], a: "Sun Microsystems"),
                     Question(q: "What is the main purpose of a compiler?", o: ["Execute code", "Convert source code to machine code", "Debug code", "None of the above"], a: "Convert source code to machine code"),
                     Question(q: "Which of the following is NOT a valid variable name in Python?", o: ["myVar", "_myVar", "2ndVar", "my_var"], a: "2ndVar"),
                     Question(q: "What is the time complexity of accessing an element in an array?", o: ["O(n)", "O(log n)", "O(1)", "O(n^2)"], a: "O(1)"),
                     Question(q: "In which language is Django written?", o: ["Python", "Ruby", "Java", "PHP"], a: "Python"),
                     Question(q: "Which of the following is a NoSQL database?", o: ["MySQL", "PostgreSQL", "MongoDB", "SQLite"], a: "MongoDB"),
                     Question(q: "What is the purpose of the 'git' command?", o: ["Version control", "File compression", "Code execution", "None of the above"], a: "Version control")]
    
    
    mutating func checkAnswer(_ userAnswer: String)->Bool{
        if userAnswer == arrayQuiz[questionNumber].answer{
            score += 1;
            return true
        }
        else{
            return false
        }
    }
    mutating func nextQuestion(){
        if questionNumber < 9 {
            questionNumber += 1
        }else {
            questionNumber = 0
        }

    }
    
    func getQuestionText()->String{
        return arrayQuiz[questionNumber].text
    }
    func getProgress()->Float{
        return Float(questionNumber+1) / Float(arrayQuiz.count)
    }
    func getQuestionNumber()->Int{
        return questionNumber
    }
    func getScore()->Int{
        return score
    }
    func getAnswersOption(_ optionno: Int)->String{
        return arrayQuiz[questionNumber].option[optionno]
    }
    
    
}

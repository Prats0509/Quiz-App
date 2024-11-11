//
//  Question.swift
//  Quiz
//
//  Created by Dara Aghamirkarimi on 2024-09-26.
//

import Foundation

struct Question {
    let text: String
    var  option: [String] 
    let answer: String
    
    init(q:String, o:[String],a:String){
        text = q
        self.option = o
        answer = a
    }
}

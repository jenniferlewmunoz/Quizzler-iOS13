//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Jennifer Lew Munoz on 7/14/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    let quiz = [
        Question(q: "Pimi is older than Sal.", a: "True"),
        Question(q: "Sal is Beagle, Pimi is a Basset Hound.", a: "False"),
        Question(q: "Sal and Pimi are both Tri-Color dogs.", a: "True"),
        Question(q: "Both Pimi and Sal sleep on the couch.", a: "False"),
        Question(q: "Sal is potty trained.", a: "False")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else  {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
}

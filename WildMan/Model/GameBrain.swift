//
//  GameBrain.swift
//  WildMan
//
//  Created by William Downing on 2/14/21.
//

import Foundation
import UIKit
import Firebase


struct GameBrain {
    
    
    var questionNumber = 0
    var score = 0
    let db = Firestore.firestore()
    
    var headlines: [Headline] = []
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == headlines[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    func getScore() -> Int {
        return score
    }
    func getComment() -> String {
        if score < 10 {
            return "You need more crazy in your life!"
        } else if score < 15 {
            return "You're pretty damn crazy!"
        } else {
            return "You're BUCK WILD!"
        }
    }
    func getQuestionNumber() -> Int {
        return questionNumber
    }
    
    func getQuestionText() {
        self.headlines = []
        db.collection("headlines").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                if let snapshotDocs = querySnapshot?.documents {
                    for doc in snapshotDocs {
                        let data = doc.data()
                        if let headlineText = data["headline"] as? String, let answer = data["answer"] as? String, let c1 = data["choice1"] as? String, let c2 = data["choice2"] as? String, let c3 = data["choice3"] as? String {
                        let newHeadline = Headline(h: headlineText, a: answer, c1: c1, c2: c2, c3: c3)
                            self.headlines.append(newHeadline)
                        }
                    }
                }
            }
        }

        
        
        
        
    }
    func getChoice1Text() -> String {
        return headlines[questionNumber].choice1
    }
    func getChoice2Text() -> String {
        return headlines[questionNumber].choice2
    }
    func getChoice3Text() -> String {
        return headlines[questionNumber].choice3
    }
    
    mutating func restartGame() {
        questionNumber = 0
        score = 0
    }
    
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(headlines.count)
    }
    
    mutating func nextQuestion() {
        
        if questionNumber + 1 < 21 {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
}


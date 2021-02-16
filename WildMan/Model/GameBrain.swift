//
//  GameBrain.swift
//  WildMan
//
//  Created by William Downing on 2/14/21.
//

import Foundation
import Firebase

struct GameBrain {
    let db = Firestore.firestore()
    
    var headlines: [Headline] = []
    
    
    let game = [
        Headline(h: "Thief Berated Mom Who Left 4-Year-Old Boy In Car He Stole.", a: "Oregon", c1: "Florida", c2: "Texas", c3: "Oregon"),
        Headline(h: "Naked Fugitive Rescued From Crocodile-Infested Mangroves By Fishermen.", a: "Australia", c1: "Florida", c2: "Texas", c3: "Australia"),
        Headline(h: "Man Dressed As Santa Gets Stuck In Power Lines.", a: "California", c1: "Florida", c2: "Arizona", c3: "California"),
        Headline(h: "Man accused of threatening grocery store employees with ax after being told to wear a mask.", a: "Florida", c1: "Florida", c2: "Texas", c3: "West Virginia"),
        Headline(h: "Influencer filmed herself licking a toilet seat on a plane for 'clout' on TikTok as part of a coronavirus challenge.", a: "Florida", c1: "Florida", c2: "Texas", c3: "California"),
        Headline(h: "Thief hid face with underwear while stealing electronics at Walmart.", a: "Florida", c1: "Florida", c2: "Texas", c3: "Alabama"),
        Headline(h: "A man killed his stepfather by giving him an atomic wedgie and strangling him with his underwear.", a: "Oklahoma", c1: "Florida", c2: "Oklahoma", c3: "Alabama"),
        Headline(h: "Navy pilots made a sky drawing of a penis.", a: "Washington", c1: "Florida", c2: "Washington", c3: "Alabama"),
        Headline(h: "Man Allegedly Hid From Coronavirus And Authorities In Airport For 3 Months.", a: "Illinois", c1: "Florida", c2: "Texas", c3: "Illinois"),
        Headline(h: "Man Gets Tired of Waiting at Hospital, Steals Ambulance, Drives Home.", a: "Florida", c1: "Florida", c2: "Arizona", c3: "Alabama"),
        Headline(h: "Man Breaks INTO Jail to Hang With Friends.", a: "Florida", c1: "Florida", c2: "Texas", c3: "Alabama"),
        Headline(h: "Man huffed aerosol can while officer watched.", a: "Massachusettes", c1: "Florida", c2: "Texas", c3: "Massachusettes"),
        Headline(h: "Man Caught Directing Flight Traffic With His Radio.", a: "Germany", c1: "Florida", c2: "Germany", c3: "Russia"),
        Headline(h: "Coin Removed From Man's Nose After Being Stuck for More Than 50 Years.", a: "Russia", c1: "Florida", c2: "Russia", c3: "Alabama"),
        Headline(h: "Unable to Wait Until 4th of July, Man Blows Off Fingers with Firework a Day Early.", a: "Florida", c1: "Florida", c2: "Texas", c3: "Alabama"),
        Headline(h: "Woman Fined After Walking Husband on a Lead and Telling Police He Was a Dog.", a: "UK", c1: "Florida", c2: "UK", c3: "Germany"),
        Headline(h: "Attorney Disbarred for Making Porn Film in Jail.", a: "Florida", c1: "Florida", c2: "Texas", c3: "Alabama"),
        Headline(h: "Government May Use Herpes Virus to Control Invasive Carp.", a: "Australia", c1: "Florida", c2: "Australia", c3: "Russia"),
        Headline(h: "TSA Agent Convicted of Tricking Woman into Showing Him Her Breasts.", a: "California", c1: "Florida", c2: "California", c3: "Texas"),
        Headline(h: "Geologist Finds Rare Formation Inside Rock That Looks Exactly Like Cookie Monster on Sesame Street.", a: "Brazil", c1: "Florida", c2: "Brazil", c3: "Spain"),
        Headline(h: "Woman calls police after missing out on McDonald's breakfast.", a: "UK", c1: "Florida", c2: "Brazil", c3: "UK"),
        
    ]
    var questionNumber = 0
    var score = 0
    
    
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == game[questionNumber].answer {
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
    
    func getQuestionText() -> String {
        return game[questionNumber].headline
    }
    func getChoice1Text() -> String {
        return game[questionNumber].choice1
    }
    func getChoice2Text() -> String {
        return game[questionNumber].choice2
    }
    func getChoice3Text() -> String {
        return game[questionNumber].choice3
    }
    
    mutating func restartGame() {
        questionNumber = 0
        score = 0
    }
    
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(game.count)
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


//
//  GameBrain.swift
//  WildMan
//
//  Created by William Downing on 2/14/21.
//

import Foundation


struct GameBrain {
    
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
        Headline(h: "Woman texted 911 for advice on how to file for a divorce.", a: "Florida", c1: "Florida", c2: "California", c3: "Arizona"),
        Headline(h: "A man filed a lawsuit against the state for refusing to acknowledge his marriage to a computer.", a: "Alabama", c1: "Florida", c2: "Georgia", c3: "Alabama"),
        Headline(h: "A group of naked Jehovah's Witnesses kidnapped two adults and a baby. They thought it was the end of the world and wanted to save them.", a: "Alberta", c1: "Florida", c2: "Alberta", c3: "Vancouver"),
        Headline(h: "Man Stole Bulldozer, Ran Down Biden Signs.", a: "Florida", c1: "Florida", c2: "Texas", c3: "Arizona"),
        Headline(h: "Man arrested after performing botched castration surgery.", a: "Florida", c1: "Florida", c2: "California", c3: "Washington"),
        Headline(h: "Burglary suspect, 39, dressed only in his underwear strikes Sheriff's deputy across the face with bible while screaming 'I condemn you!'", a: "Florida", c1: "Florida", c2: "Texas", c3: "North Carolina"),
        Headline(h: "Woman sues for paternity tests on goats.", a: "Florida", c1: "Florida", c2: "Mississippi", c3: "Louisiana"),
        Headline(h: "Man calls cops after burger with mayo is left at his door.", a: "Florida", c1: "Florida", c2: "New York", c3: "New Jersey"),
        Headline(h: "Naked man tells authorities he's Batman.", a: "Florida", c1: "Florida", c2: "California", c3: "New Mexico"),
        Headline(h: "Woman places 400 pamphlets, porn-filled Easter eggs in strangers' mailboxes.", a: "Florida", c1: "Florida", c2: "Texas", c3: "Alabama"),
        Headline(h: "Man stabbed with samurai sword after not buying pot for partner, report says.", a: "Michigan", c1: "Florida", c2: "Michigan", c3: "California"),
        Headline(h: "Mystery smell overwhelms county again, investigators baffled.", a: "Pennsylvania", c1: "Pennsylvania", c2: "Florida", c3: "California"),
        Headline(h: "Homeowner uses motion-activated sprinkler with 'impressive amount of pressure' to thwart thieves.", a: "California", c1: "Florida", c2: "California", c3: "Texas"),
        Headline(h: "Boy, 8, wins $200 worth of cannabis products at youth hockey tournament.", a: "Canada", c1: "California", c2: "Colorado", c3: "Canada"),
        Headline(h: "Man appeals court ruling against ‘GRABHER’ vanity license plate.", a: "Canada", c1: "Florida", c2: "California", c3: "Canada"),
        Headline(h: "Woman gives birth in Walmart toilet paper aisle, report says.", a: "Missouri", c1: "Florida", c2: "Missouri", c3: "Arizona"),
        Headline(h: "Woman, 93, makes coronavirus plea for more beer amid lockdown in viral photo.", a: "Pennsylvania", c1: "Florida", c2: "Georgia", c3: "Pennsylvania"),
        Headline(h: "Man drove to 11 different Wendy's restaurants twice in 1 day to stock up on free nuggets, report says.", a: "Oregon", c1: "Florida", c2: "Texas", c3: "Oregon"),
        Headline(h: "Hospital security guard delivers baby.", a: "Florida", c1: "Florida", c2: "Georgia", c3: "Louisiana"),
        Headline(h: "Serial-killer 'expert' admits he made up his experience — even the murder of his nonexistent wife.", a: "France", c1: "Florida", c2: "Germany", c3: "France"),
        Headline(h: "Coyote chases roadrunner on video: 'It's happening right now y'all!!!'", a: "Arizona", c1: "Florida", c2: "Arizona", c3: "California"),
        Headline(h: "Man tried to set 4-year-old on fire, burn 'demon' out of him, police say.", a: "Pennsylvania", c1: "Florida", c2: "Pennsylvania", c3: "New York"),
        Headline(h: "Tennis player shows how she stays in shape during coronavirus outbreak: Pushing cars.", a: "Ukraine", c1: "Florida", c2: "Ukraine", c3: "Russia"),
        
        
        
        
    ]
    var questionNumber = Int.random(in: 0...43)
    var score = 0
    var questionTotal = 0
    var currentQuestionNumber = 0
    var usedNumbers = [Int]()
    
    
    
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
        if score < 7 {
            return "You need more crazy in your life!"
        } else if score < 9 {
            return "You're pretty damn crazy!"
        } else {
            return "You're BUCK WILD!"
        }
    }
    func getQuestionNumber() -> Int {
        return questionNumber
    }
    func getQuestionTotal() -> Int {
        return questionTotal
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
        questionTotal = 0
        questionNumber = Int.random(in: 0...43)
        score = 0
        usedNumbers = []
        
    }
    
    
    mutating func nextQuestion() {
        
        
        
        if questionTotal + 1 < 11 {
            questionTotal += 1
            currentQuestionNumber = Int.random(in: 0...43)
            usedNumbers.append(currentQuestionNumber)
            print(usedNumbers)
            if usedNumbers.contains(currentQuestionNumber){
                questionNumber = Int.random(in: 0...43)
            }
        } else {
            questionNumber = 0
            score = 0
        }
    }
}



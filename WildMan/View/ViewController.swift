//
//  ViewController.swift
//  WildMan
//
//  Created by William Downing on 2/12/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var HeadlineText: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice3Button: UIButton!
    
    var gameBrain = GameBrain()
    var player: AVAudioPlayer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameBrain.getQuestionText()
        
        
        
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItRight = gameBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
            playRightSound()
        } else {
            sender.backgroundColor = UIColor.red
            playWrongSound()
            
        }
        let questionNumber = gameBrain.getQuestionNumber()
        
        if questionNumber + 1 < 21 {
            gameBrain.nextQuestion()
        } else {
            self.performSegue(withIdentifier: "goToResults", sender: self)
            gameBrain.restartGame()
        }
        
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    @objc func updateUI() {
//        HeadlineText.text = gameBrain.getQuestionText()
        choice1Button.setTitle(gameBrain.getChoice1Text(), for: .normal)
        choice1Button.backgroundColor = UIColor.clear
        choice2Button.setTitle(gameBrain.getChoice2Text(), for: .normal
        )
        choice2Button.backgroundColor = UIColor.clear
        choice3Button.setTitle(gameBrain.getChoice3Text(), for: .normal)
        choice3Button.backgroundColor = UIColor.clear
        questionNumberLabel.text = "Q: \(gameBrain.getQuestionNumber() + 1 )/21"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.score = gameBrain.getScore()
            destinationVC.comment = gameBrain.getComment()
            
            
        }
    
    }
    
    func playRightSound() {
        let url = Bundle.main.url(forResource: "right", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
    func playWrongSound() {
        let url = Bundle.main.url(forResource: "wrong", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }

}


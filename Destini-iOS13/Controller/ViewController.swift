//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var story = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        story.choiceMade(choice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI(){
        let storyToShow = story.getStory()
        
        storyLabel.text = storyToShow.title
        choice1Button.setTitle(storyToShow.choice1, for: .normal)
        choice2Button.setTitle(storyToShow.choice2, for: .normal)
    }
}


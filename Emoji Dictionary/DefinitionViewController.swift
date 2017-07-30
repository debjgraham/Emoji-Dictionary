//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Deborah Graham on 7/30/17.
//  Copyright © 2017 Deborah Graham. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = "No emoji"
    /*var emojidefs = ["Cool dude", "Crushing on you", "Poo", "Purple Nails", "Dancing, dancing, she's a dancing machine", "Remember me, wearing a nice dress, staring at the sunset", "Hampster", "A rose by any other name", "Hibiscus", "I'm a nerd, you're a nerd, let's all be nerds", "I wanna hold your hand"]
 */

    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😎" {
            definitionLabel.text = "Cool dude"
        }
        if emoji == "😍" {
            definitionLabel.text = "Crushing on you"
        }
        if emoji == "💩" {
            definitionLabel.text = "Poo"
        }
        if emoji == "💅" {
            definitionLabel.text = "Purple Nails"
        }
        if emoji == "💃🏾" {
            definitionLabel.text = "Dancing, dancing, she's a dancing machine"
        }
        if emoji == "👗🌆" {
            definitionLabel.text = "Say you'll remember me standing in a nice dress, staring at the sunset babe; red lips and rosy cheeks. Say you'll see me again even if it's just in your wildest dreams"
        }
        if emoji == "🐹" {
            definitionLabel.text = "Hampster"
        }
        if emoji == "🌹" {
            definitionLabel.text = "A rose by any other name"
        }
        if emoji == "🌺" {
            definitionLabel.text = "Hibiscus"
        }
        if emoji == "🤓" {
            definitionLabel.text = "I'm a nerd, you're a nerd, let's all be nerds"
        }
        if emoji == "👫" {
            definitionLabel.text = "I wanna hold your hand"
        }
        
        //    var emojis = ["😎","😍","💩","💅","💃🏾","👗","🐹","🌹","🌺","🤓", "👫"]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

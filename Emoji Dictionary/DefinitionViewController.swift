//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Deborah Graham on 7/30/17.
//  Copyright © 2017 Deborah Graham. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = Emoji()
    /*var emojidefs = ["Cool dude", "Crushing on you", "Poo", "Purple Nails", "Dancing, dancing, she's a dancing machine", "Remember me, wearing a nice dress, staring at the sunset", "Hampster", "A rose by any other name", "Hibiscus", "I'm a nerd, you're a nerd, let's all be nerds", "I wanna hold your hand"]
 */

    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var createdLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        createdLabel.text = "Created: \(emoji.createdYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

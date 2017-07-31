//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Deborah Graham on 7/30/17.
//  Copyright © 2017 Deborah Graham. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var emojiTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "moveSeque", sender: emoji)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! String
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.category = "Smiley"
        emoji1.createdYear = 2010
        emoji1.definition = "Cool dude!"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😍"
        emoji2.category = "Smiley"
        emoji2.createdYear = 2014
        emoji2.definition = "Crushng on you"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "💩"
        emoji3.category = "Strange Things"
        emoji3.createdYear = 2016
        emoji3.definition = "Poo"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "💅"
        emoji4.category = "People Parts"
        emoji4.createdYear = 2012
        emoji4.definition = "Purple Fingernails"
   
        let emoji5 = Emoji()
        emoji5.stringEmoji = "💃🏾"
        emoji5.category = "Lyrics"
        emoji5.createdYear = 2014
        emoji5.definition = "Dancing, dancing, dancing. She's a dancing machine!"

        let emoji6 = Emoji()
        emoji6.stringEmoji = "👗🌆"
        emoji6.category = "Lyrics"
        emoji6.createdYear = 2016
        emoji6.definition = "Say you'll remember me standing in a nice dress, staring at the sunset babe; red lips and rosy cheeks. Say you'll see me again even if it's just in your wildest dreams"
 
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🐹"
        emoji7.category = "Animals"
        emoji7.createdYear = 2017
        emoji7.definition = "Cute hampster"

        let emoji8 = Emoji()
        emoji8.stringEmoji = "🌹"
        emoji8.category = "Nature"
        emoji8.createdYear = 2014
        emoji8.definition = "Rose"
        
        let emoji9 = Emoji()
        emoji9.stringEmoji = "🌺"
        emoji9.category = "Nature"
        emoji9.createdYear = 2015
        emoji9.definition = "Hibiscus"
        
        let emoji10 = Emoji()
        emoji10.stringEmoji = "🤓"
        emoji10.category = "Smiley"
        emoji10.createdYear = 2015
        emoji10.definition = "Nerd? Who you calling a nerd, you...you...GEEK!"
        
        let emoji11 = Emoji()
        emoji11.stringEmoji = "👫"
        emoji11.category = "People"
        emoji11.createdYear = 2015
        emoji11.definition = "I want to hold your hand"

        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8, emoji9, emoji10, emoji11]
    }

}


//
//  AddController.swift
//  makepaassword
//
//  Created by tunakan2525 on 2019/07/21.
//  Copyright © 2019 吉本裕晴. All rights reserved.
//

import UIKit

var TodoKobetsunonakami = [String]()
var PassName = [String]()

class AddController: UIViewController {
    
   @IBOutlet weak var passwordlabel: UILabel!
   @IBOutlet weak var passwordNameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func passwordmakere(digits: Int) -> String {
        
        var numberAlphabetArray: [String] = []
        
        for number in 0...9 {
            numberAlphabetArray.append(String(number))
        }
        
        let alphabetString = "abcdefghijklmnopqrstuvwxyz"
        for alphabet in alphabetString {
            numberAlphabetArray.append(String(alphabet))
        }
        
        let shuffledNumberAlphabetArray = numberAlphabetArray.shuffled()
        
        var Newpassword = ""
        
        for index in 0...digits - 1 {
            Newpassword += shuffledNumberAlphabetArray[index]
            
        }
        return Newpassword
    }
    
    @IBAction func makeButten(_ sender: Any) {
        
        let Newpassword = passwordmakere(digits: 4)
        passwordlabel.text = Newpassword
    }
    
    @IBAction func keta(_ sender: Any) {
        
        let Newpassword = passwordmakere(digits: 6)
        passwordlabel.text = Newpassword
    }
    
    @IBAction func kketa(_ sender: Any) {
        
        let Newpassword = passwordmakere(digits: 8)
        passwordlabel.text = Newpassword
    }
    
    @IBAction func tuika(_ sender: Any) {
        
        TodoKobetsunonakami.append(passwordlabel.text!)
        UserDefaults.standard.set( TodoKobetsunonakami, forKey: "TodoList" )
        PassName.append(passwordNameField.text!)
        UserDefaults.standard.set( PassName, forKey: "passnameList" )
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func modoru() {
        self.dismiss(animated: true, completion: nil)
    }
    
   

    
    
    
   
    
    
}

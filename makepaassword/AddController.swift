//
//  AddController.swift
//  makepaassword
//
//  Created by tunakan2525 on 2019/07/21.
//  Copyright © 2019 吉本裕晴. All rights reserved.
//

import UIKit

var TodoKobetsunonakami = [String]()

class AddController: UIViewController {
    
   @IBOutlet weak var passwordlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func makeButten(_ sender: Any) {
        
        let password = Int.random(in: 1111 ... 9999)
    
        passwordlabel.text = String(password)
        
        
    }
    
    
    
    @IBAction func keta(_ sender: Any) {
        
        let password = Int.random(in: 111111 ... 999999)
        
        passwordlabel.text = String(password)
        
        
    }
    
    
    @IBAction func kketa(_ sender: Any) {
        
        let password = Int.random(in: 11111111 ... 99999999)
        
        passwordlabel.text = String(password)
        
    }
    
    
    
    
    
    @IBAction func tuika(_ sender: Any) {
        
        TodoKobetsunonakami.append(passwordlabel.text!)
        
        UserDefaults.standard.set( TodoKobetsunonakami, forKey: "TodoList" )
        
        
        
    }
    
    
    
   
    
    
}

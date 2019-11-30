//
//  ViewController.swift
//  makepaassword
//
//  Created by tunakan2525 on 2019/07/20.
//  Copyright © 2019 吉本裕晴. All rights reserved.
//

import UIKit

//classの継承を追加
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    //最初からあるコード
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "PasswordTableViewCell", bundle:nil),forCellReuseIdentifier:"TodoCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //追加画面で入力した内容を取得する
        if UserDefaults.standard.object(forKey: "TodoList") != nil {
            TodoKobetsunonakami = UserDefaults.standard.object(forKey: "TodoList") as! [String]
        }
        if UserDefaults.standard.object(forKey: "passnameList") != nil {
            PassName = UserDefaults.standard.object(forKey: "passnameList") as! [String]
        }
        tableView.reloadData()
    }
    
    //最初からあるコード
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    // MARK: TableView
    //UITableView、numberOfRowsInSectionの追加(表示するcell数を決める)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //戻り値の設定(表示するcell数)
        return TodoKobetsunonakami.count
    }

    //UITableView、cellForRowAtの追加(表示するcellの中身を決める)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //変数を作る
        let TodoCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath) as! PasswordTableViewCell
        //変数の中身を作る
        TodoCell.password.text = TodoKobetsunonakami[indexPath.row]
        TodoCell.passwordName.text = PassName[indexPath.row]
        
        
        
        //戻り値の設定（表示する中身)
        return TodoCell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
    {
        return true
    }

    //スワイプしたセルを削除　
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            TodoKobetsunonakami.remove(at: indexPath.row)
            PassName.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath as IndexPath], with: UITableView.RowAnimation.automatic)
            UserDefaults.standard.set( TodoKobetsunonakami, forKey: "TodoList" )
            UserDefaults.standard.set( PassName, forKey: "passnameList" )
        }
    }
    
    
}

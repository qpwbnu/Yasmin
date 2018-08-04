//
//  ViewController.swift
//  优思明201808
//
//  Created by 秦培文 on 2018/8/1.
//  Copyright © 2018 秦培文. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circle1: UIView!
    @IBOutlet weak var firstday: UILabel!
    
    @IBOutlet weak var showtable: UILabel!
    
    var eatdate = 8
    var number = 0
    var countNumber = 0
    
    
    
    
    @IBAction func eat(_ sender: UIButton) {
        number += 1
        countNumber = number % 7
        showtable.text = String(number)
        let shifoudaka = number % 2
        print(shifoudaka)
        showtable.font = UIFont.init(name:"PingFang-Bold.ttf", size: 50)
        
        
        if shifoudaka == 1 {
            firstday.textColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
            circle1.backgroundColor = UIColor.init(red: 255/255, green: 110/255, blue: 112/255, alpha: 1)
        }else{
            firstday.textColor = UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
            circle1.backgroundColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       firstday.text = String(eatdate % 30)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


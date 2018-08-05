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
    @IBOutlet weak var day2: UILabel!
    @IBOutlet weak var day3: UILabel!
    @IBOutlet weak var day4: UILabel!
    @IBOutlet weak var day5: UILabel!
    @IBOutlet weak var day6: UILabel!
    @IBOutlet weak var day7: UILabel!
    
    @IBOutlet weak var showtable: UILabel!
    
    var eatdate = 8
    var number = 0
    var countNumber = 0
    
//    获取日期
    let date = Date()
    let calendar = Calendar.current
    
    
    
    
    
    @IBAction func eat(_ sender: UIButton) {
        number += 1
        countNumber = number % 7
        showtable.text = String(number)
        let shifoudaka = number % 2
        print(shifoudaka)
        showtable.font = UIFont.init(name:"PingFang-Bold.ttf", size: 50)
        
        print(date)
        
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
//        获取月份
        let month = calendar.component(.month, from: date)
//        获取日期
        let day = calendar.component(.day, from: date)
//        日历赋值
        firstday.text = String(day)
        day2.text = String(DAY_1)
        day3.text = String(DAY_2)
        day4.text = String(DAY_3)
        day5.text = String(DAY_4)
        day6.text = String(DAY_5)
        day7.text = String(DAY_6)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


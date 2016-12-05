//
//  10ques ViewController.swift
//  hw7
//
//  Created by heroshi on 2016/12/4.
//  Copyright © 2016年 heroshi. All rights reserved.
//

import UIKit

class _0ques_ViewController: UIViewController {
    
    @IBOutlet weak var times: UILabel! //第幾題
    var timeslab = 0  //按了幾次
    

    @IBOutlet weak var pictureview: UIImageView!
    
    var timestart = 0 //還沒按的時候
    @IBOutlet weak var ques: UILabel! //問題
    
    @IBOutlet weak var showans: UILabel!  //秀答案
    
    struct QNA {
        var Ques = ""
        var Ans = ""
        var picture = UIImage(named:"1012")
    }
    
    var QnaArray = [
        
        QNA(Ques:"請問101大樓在哪個縣市？",Ans:"臺北市",picture: UIImage(named:"1012")),
        QNA(Ques:"請問萊萊磯釣場在哪個縣市？",Ans:"宜蘭縣",picture: UIImage(named:"萊萊磯釣場")),
        QNA(Ques:" 請問阿里小火車在哪個縣市？",Ans:"嘉義縣",picture: UIImage(named:"阿里山3")),
        QNA(Ques:"請問日月潭在哪個縣市？",Ans:"南投",picture: UIImage(named:"日月潭")),
        QNA(Ques:"請問愛河在哪個縣市？",Ans:"高雄市",picture: UIImage(named:"高雄")),
        QNA(Ques:"請問炸寒單是哪個縣市習俗？",Ans:"台東縣",picture: UIImage(named:"炸寒單")),
        QNA(Ques:"請問七星潭在哪個縣市？",Ans:"花蓮縣",picture: UIImage(named:"七星潭")),
        QNA(Ques:"請問水晶教堂在哪個縣市？",Ans:"台南市",picture: UIImage(named:"水晶教堂")),
        QNA(Ques:"請問高美濕地在哪個縣市？",Ans:"台中",picture: UIImage(named:"高美夕陽")),
        QNA(Ques:"請問九份老街在哪個縣市？",Ans:"新北市",picture: UIImage(named:"九分2"))
    ]
    
    //顯示答案
    @IBAction func answering(_ sender: Any) {
        

        timeslab += 1
        if timeslab % 10 > timestart {
            showans.text = "這是國防布"
        }
        else{
             pictureview.isHidden = false
            
            showans.text = QnaArray[timestart % 10].Ans
            pictureview.image = QnaArray[timestart % 10].picture
        }
    }
        
    //下一題
    
    @IBAction func nextques(_ sender: Any) {
    
        times.isHidden = false
        showans.isHidden = false
        timestart = timestart + 1
        timeslab = timestart - 1
        if timestart >= 11{
            timestart = timestart % 10
        
        }
        times.text = "\(timestart)."
        ques.text = QnaArray[timestart % 10 ].Ques
        showans.text = ""
        pictureview.image = QnaArray[timestart % 10].picture

    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

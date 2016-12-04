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
        
        QNA(Ques:"請問臺灣最高的大樓在哪個縣市？",Ans:"臺北市",picture: UIImage(named:"1012")),
        
        
        QNA(Ques:"請問大溪蜜月灣在哪個縣市？",Ans:"宜蘭縣",picture: UIImage(named:"蜜月灣")),
        QNA(Ques:" 請問阿里山小火車在哪個縣市？",Ans:"嘉義縣",picture: UIImage(named:"阿里山3")),
        QNA(Ques:"請問日月潭在哪個縣市？",Ans:"南投",picture: UIImage(named:"1012")),
        QNA(Ques:"請問光之穹頂是哪個縣市的捷運地標？",Ans:"高雄市",picture: UIImage(named:"1012")),
        QNA(Ques:"請問炸寒單爺是哪個縣市的習俗？",Ans:"台東縣",picture: UIImage(named:"1012")),
        QNA(Ques:"請問太魯閣峽谷在哪個縣市？",Ans:"花蓮縣",picture: UIImage(named:"1012")),
        QNA(Ques:"請問水晶教堂在哪個縣市？",Ans:"台南市",picture: UIImage(named:"1012")),
        QNA(Ques:"請問高美濕地在哪個縣市？",Ans:"台中",picture: UIImage(named:"1012")),
        QNA(Ques:"請問九份老街在哪個縣市？",Ans:"新北市",picture: UIImage(named:"1012"))
    ]
    
    //顯示答案
    @IBAction func answering(_ sender: Any) {
        

        timeslab += 1
        if timeslab % 10 > timestart {
            showans.text = "你看到的是國防布"
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

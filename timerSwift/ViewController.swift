//
//  ViewController.swift
//  timerSwift
//
//  Created by Rachel on 2015/9/25.
//  Copyright © 2015年 nr studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var timerLabel: UILabel!
    
    
    
    @IBAction func startButton(sender: UIButton) {
        if timerRunning == false{
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("timeCount"), userInfo: nil, repeats: true)
            timerRunning = true
        
        
        }
    }
    
    
    @IBAction func stopButton(sender: UIButton) {
        if timerRunning == true {
            timer.invalidate()
            timerRunning = false
           // timerLabel.text = "0"
        
        }
        
        
        
    }
    
    
    
    @IBAction func restartButton(sender: UIButton) {
        timerCount = 0
        timerLabel.text = "0"
        
        
    }
    
    var timerCount = 0 //seconds start from 0
    var timerRunning = false //check if the timer is running
    var timer = NSTimer()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func timeCount(){
      timerCount += 1
      timerLabel.text = "\(timerCount)"
    
        
        
    }

}


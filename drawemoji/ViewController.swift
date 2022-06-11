//
//  ViewController.swift
//  drawemoji
//
//  Created by Yoga on 2022/5/31.
//

import UIKit

class ViewController: UIViewController {
    
    
   
    @IBOutlet weak var shapeSegment: UISegmentedControl!
    @IBOutlet weak var emojiNumberLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        emojiLabel.text = ""

    }

    //正方形
    func makesquare(){
        var content = ""
        let number = Int(emojiSlider.value)
        for _ in 1...number{
            for _ in 1...number{
                content = content+"🐶"
            }
            content = content+"\n"
        }
        emojiLabel.text = content
    }
    
    //三角形
    func maketriangle(){
        var content = ""
        let number = Int(emojiSlider.value)
        for i in 1...number{
            for _ in 1...i{
                content = content+"🐶"
            }
            content = content+"\n"
        }
        emojiLabel.text = content
    }
    
    //金字塔
    func makepyramid(){
        var content = ""
        let number = Int(emojiSlider.value)
        //控制行數
        for i in 1...number{
            //控制一行有幾個貓emoji
            for _ in i..<number{
                content = content+"🐱"
            }
            //第一行一個、第二行三個、第三行五個...
            let num = i*2-1
            for _ in 1...num{
                content = content+"🐶"
            }
            content = content+"\n"
        }
        emojiLabel.text = content
    }
    
    //菱形
    func makediamond(){
        var content = ""
        let number = Int(emojiSlider.value)
        var catCount = number-1
        var dogCount = 1
        
        for i in 1...number*2-1{
            for _ in 0..<catCount{
                content = content+"🐱"
            }
            for _ in 1...dogCount{
                content = content+"🐶"
            }
            if i<number{
                catCount = catCount-1
                dogCount = dogCount+2
            }else{
                catCount = catCount+1
                dogCount = dogCount-2
            }
            content = content+"\n"
        }
        emojiLabel.text = content
        
    }
    
    @IBAction func changeNumber(_ sender: UISlider) {
        //四捨五入slider數值
        sender.value = sender.value.rounded()
        //取整數，原本得出的數值為浮點數
        let number = Int(sender.value)
        emojiNumberLabel.text = "\(number)"
        
        if shapeSegment.selectedSegmentIndex == 0{
            makesquare()
        }else if shapeSegment.selectedSegmentIndex == 1{
            maketriangle()
        }else if shapeSegment.selectedSegmentIndex == 2{
            makepyramid()
        }else{
            makediamond()
        }
        
        
    }
        
    }


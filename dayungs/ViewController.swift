//
//  ViewController.swift
//  dayungs
//
//  Created by 蕭鈺蒖 on 2021/11/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var MenuPageControl: UIPageControl!
    
    @IBOutlet weak var menuSegment: UISegmentedControl!
    @IBOutlet weak var menuImageView: UIImageView!
    
    let menuImages = ["北部menu", "中部menu", "南部menu", "東部menu" ]
    var arrayIndex : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        change()
//         Do any additional setup after loading the view.
    }
    
    func change(){
        menuImageView.image = UIImage(named: menuImages[arrayIndex])
        MenuPageControl.currentPage = arrayIndex
        menuSegment.selectedSegmentIndex = arrayIndex
        
    }
    
//  page Control
    @IBAction func pageChange(_ sender: UIPageControl) {
        arrayIndex = sender.currentPage
        change()
    }
    
//    segment Control
    @IBAction func segmentChange(_ sender: UISegmentedControl) {
        arrayIndex = sender.selectedSegmentIndex
        change()

    }
    
//    button Next
    @IBAction func next(_ sender: UIButton) {
        moveNext()
        change()
    }
    
//    button previous
    @IBAction func previous(_ sender: UIButton) {
        movePrev()
        change()
    }
    
    
    
//    swipe gesture left
    @IBAction func swipeNext(_ sender: Any) {
        moveNext()
        change()
    }
    
//    swipe gesture right
    @IBAction func swipePrev(_ sender: Any) {
        movePrev()
        change()
    }
    
//    for button and swipe gesture (next)
    func moveNext(){
        if arrayIndex == menuImages.count - 1{
            arrayIndex = 0
        }else{
            arrayIndex += 1
        }
    }
    
//    for button and swipe gesture (previous)
    func movePrev(){
        if arrayIndex == 0 {
            arrayIndex = menuImages.count - 1
        }else{
            arrayIndex -= 1
        }
    }
    
}


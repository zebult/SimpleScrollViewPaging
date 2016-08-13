//
//  ViewController.swift
//  SimpleScrollViewPaging
//
//  Created by saichi on 2016/08/14.
//  Copyright © 2016年 saichi. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    private var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        
        // ビューの縦、横のサイズを取得する.
        let width = self.view.frame.maxX, height = self.view.frame.maxY
        
        // 背景の色をCyanに設定する.
        self.view.backgroundColor = UIColor.cyanColor()
        
        // ScrollViewを取得する.
        scrollView = UIScrollView(frame: self.view.frame)
        
        // ページ数を定義する.
        let pageSize = 4
        
        // 縦方向と、横方向のインディケータを非表示にする.
        scrollView.showsHorizontalScrollIndicator = false;
        scrollView.showsVerticalScrollIndicator = false
        
        // ページングを許可する.
        scrollView.pagingEnabled = true
        
        // ScrollViewのデリゲートを設定する.
        //        scrollView.delegate = self
        
        // スクロールの画面サイズを指定する.
        scrollView.contentSize = CGSizeMake(CGFloat(pageSize) * width, 0)
        
        // ScrollViewをViewに追加する.
        self.view.addSubview(scrollView)

        // ページ数分ボタンを生成する.
        for var i = 0; i < pageSize; i++ {
            
            // ページごとに異なるラベルを生成する.
            let myLabel:UILabel = UILabel(frame: CGRectMake(CGFloat(i) * width + width/2 - 40, height/2 - 40, 80, 80))
            myLabel.backgroundColor = UIColor.blackColor()
            myLabel.textColor = UIColor.whiteColor()
            myLabel.textAlignment = NSTextAlignment.Center
            myLabel.layer.masksToBounds = true
            myLabel.text = "Page\(i)"
            myLabel.font = UIFont.systemFontOfSize(UIFont.smallSystemFontSize())
            myLabel.layer.cornerRadius = 40.0
            
            scrollView.addSubview(myLabel)
        }
        
    }
    
    
}
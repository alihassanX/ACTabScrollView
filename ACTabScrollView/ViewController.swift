//
//  ViewController.swift
//  ACTabScrollView
//
//  Created by AzureChen on 2015/8/19.
//  Copyright (c) 2015年 AzureChen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ACTabScrollViewDelegate, ACTabScrollViewDataSource {

    @IBOutlet weak var tabScrollView: ACTabScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabScrollView.frame = self.view.frame
        self.view.addSubview(tabScrollView)
        
        tabScrollView.defaultPage = 1
        tabScrollView.pagingEnabled = true
        tabScrollView.delegate = self
        tabScrollView.dataSource = self
    }

    func tabScrollView(tabScrollView: ACTabScrollView, didChangePageTo index: Int) {
        print(index)
    }
    
    func tabScrollView(tabScrollView: ACTabScrollView, didScrollPageTo index: Int) {
    }
    
    func numberOfPagesInTabScrollView(tabScrollView: ACTabScrollView) -> Int {
        return 3
    }
    
    func heightForTabInTabScrollView(tabScrollView: ACTabScrollView) -> CGFloat {
        return 60
    }
    
    func tabScrollView(tabScrollView: ACTabScrollView, widthForTabAtIndex index: Int) -> CGFloat {
        return 60
    }
    
    func tabScrollView(tabScrollView: ACTabScrollView, tabForPageAtIndex index: Int) -> UIView {
        let tabView = UIView()
        
        switch (index % 3) {
        case 0:
            tabView.backgroundColor = UIColor.redColor()
        case 1:
            tabView.backgroundColor = UIColor.greenColor()
        case 2:
            tabView.backgroundColor = UIColor.blueColor()
        default:
            break
        }
        
        return tabView
    }
    
    func tabScrollView(tabScrollView: ACTabScrollView, widthForContentAtIndex index: Int) -> CGFloat {
        return self.view.frame.size.width
    }
    
    func tabScrollView(tabScrollView: ACTabScrollView, contentForPageAtIndex index: Int) -> UIView {
        let contentView = UIView()
        
        switch (index % 3) {
        case 0:
            contentView.backgroundColor = UIColor.redColor()
        case 1:
            contentView.backgroundColor = UIColor.greenColor()
        case 2:
            contentView.backgroundColor = UIColor.blueColor()
        default:
            break
        }
        
        return contentView
    }
}


//
//  ViewController.swift
//  scrollviewIsCool
//
//  Created by Carlos on 16/1/17.
//  Copyright © 2017 Chichiri Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let iconos:[UIImage] = [#imageLiteral(resourceName: "icon0"),#imageLiteral(resourceName: "icon1"),#imageLiteral(resourceName: "icon2")]
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var contentWidth : CGFloat = 0.0
        
        let scrollViewHeight = scrollView.frame.size.height
        let scrollViewWidth = scrollView.frame.size.width
        
        for x in 0 ..< iconos.count {
            
            let imageView = UIImageView(image: iconos[x])
            
            let newX = scrollViewWidth / 2 + scrollViewWidth * CGFloat(x)
            
            
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x:newX - 75, y:(scrollViewHeight / 2) - 75, width:150, height:150)
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height: scrollViewHeight)
        scrollView.clipsToBounds = false
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


//
//  GameViewController.swift
//  flappy bird
//
//  Created by s20151104681 on 18/5/11.
//  Copyright © 2018年 s20151104681. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController{
    override func viewWillLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if let sk视图 = self.view as? SKView{
            if sk视图.scene == nil {
                let 长宽比 = sk视图.bounds.size.height /  sk视图.bounds.size.width
                let 场景 = GameScene(size:CGSize(width: 320, height: 320 * 长宽比))
                sk视图.showsFPS = true
                sk视图.showsNodeCount = true
                sk视图.showsPhysics = true
                sk视图.ignoresSiblingOrder = true
                
                场景.scaleMode = .aspectFill
                
                sk视图.presentScene(场景)
            }
        
        }
    
    }
    
        
    
    
    
}

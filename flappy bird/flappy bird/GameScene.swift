//
//  GameScene.swift
//  flappy bird
//
//  Created by s20151104681 on 18/5/11.
//  Copyright © 2018年 s20151104681. All rights reserved.
//

import SpriteKit
import GameplayKit


enum 图层: CGFloat {
    case 背景
    case 前景
    case 游戏角色
}
class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    let 世界单位 = SKNode()
    
    override func didMove(to view: SKView) {
        addChild(世界单位)
        设置背景()
        
    }
    func 设置背景() {
        let 背景 = SKSpriteNode(imageNamed: "Background")
        背景.anchorPoint = CGPoint(x: 0.5,y: 1.0)
        背景.position = CGPoint(x: size.width/2, y: size.height)
        背景.zPosition = 图层.背景.rawValue
        世界单位.addChild(背景)
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
      
    }
}

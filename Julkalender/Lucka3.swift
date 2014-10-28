//
//  Lucka3.swift
//  Julkalender
//
//  Created by Mika Juvonen on 27/10/14.
//  Copyright (c) 2014 Mika Juvonen. All rights reserved.
//

import Foundation
import SpriteKit

class Lucka3: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Lucka3"
        myLabel.fontSize = 30
        myLabel.fontColor = UIColor.blackColor()
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        self.backgroundColor = UIColor.whiteColor()
        self.addChild(myLabel)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            
        }
        
        runAction(SKAction.sequence([
            SKAction.waitForDuration(3.0),
            SKAction.runBlock() {
                let reveal = SKTransition.flipHorizontalWithDuration(0.5)
                let scene = GameScene(size: self.size)
                self.view?.presentScene(scene, transition:reveal)
            }
            ]))
        
        
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}

//
//  GameScene.swift
//  Julkalender
//
//  Created by Mika Juvonen on 27/10/14.
//  Copyright (c) 2014 Mika Juvonen. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Julkalender 2014"
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
            
            if (location.y > self.frame.height*0.67) {
                runAction(SKAction.sequence([
                    SKAction.waitForDuration(3.0),
                    SKAction.runBlock() {
                        // 5
                        let reveal = SKTransition.flipHorizontalWithDuration(0.5)
                        let scene = Lucka1(size: self.size)
                        self.view?.presentScene(scene, transition:reveal)
                    }
                    ]))
                
            } else if (location.y > self.frame.height*0.33){
                runAction(SKAction.sequence([
                    SKAction.waitForDuration(3.0),
                    SKAction.runBlock() {
                        // 5
                        let reveal = SKTransition.flipHorizontalWithDuration(0.5)
                        let scene = Lucka2(size: self.size)
                        self.view?.presentScene(scene, transition:reveal)
                    }
                    ]))
            
            } else {
                runAction(SKAction.sequence([
                    SKAction.waitForDuration(3.0),
                    SKAction.runBlock() {
                        // 5
                        let reveal = SKTransition.flipHorizontalWithDuration(0.5)
                        let scene = Lucka3(size: self.size)
                        self.view?.presentScene(scene, transition:reveal)
                    }
                    ]))
                
                
            }
            
        }
        


        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}

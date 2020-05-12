//
//  GameManager.swift
//  MarculescuOctavianGeorge_354_Snake
//
//  Created by user169232 on 5/5/20.
//  Copyright © 2020 Marculescu Octavian. All rights reserved.
//

import SpriteKit

class GameManager{
    var scene:GameScene!
    init(scene:GameScene){
        self.scene=scene
    }
    
    //pozitia de start a sarpelui
    func initGame() {
        scene.playerPositions.append((10, 10))
        scene.playerPositions.append((10, 11))
        scene.playerPositions.append((10, 12))
        scene.playerPositions.append((10, 13))
        scene.playerPositions.append((10, 14))
        scene.playerPositions.append((10, 15))
        renderChange()
    }
    //culoarea sarpelui
    func renderChange() {
        for (node, x, y) in scene.gameArray {
            if contains(a: scene.playerPositions, v: (x,y)) {
                node.fillColor = SKColor.red
            } else {
                node.fillColor = SKColor.clear
            }
        }
    }
    
    //Verificarea coordonatelor
    func contains(a:[(Int, Int)], v:(Int,Int)) -> Bool {
    let (c1, c2) = v
    for (v1, v2) in a { if v1 == c1 && v2 == c2 { return true } }
    return false
    }
}

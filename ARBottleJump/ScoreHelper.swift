//
//  ScoreHelper.swift
//  ARBottleJump
//
//  Created by 宋 奎熹 on 2018/1/3.
//  Copyright © 2018年 宋 奎熹. All rights reserved.
//

import UIKit

class ScoreHelper: NSObject {
    
    private override init() {
        
    }

    static let shared: ScoreHelper = ScoreHelper()
    
    func getHighestScore() -> Int {
        return UserDefaults.standard.integer(forKey: "highest_score")
    }
    
    func setHighestScore(_ score: Int) {
        if score > getHighestScore() {
            UserDefaults.standard.set(score, forKey: "highest_score")
            UserDefaults.standard.synchronize()
        }
    }
    
}

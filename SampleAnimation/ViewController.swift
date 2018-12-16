//
//  ViewController.swift
//  SampleAnimation
//
//  Created by 田島諒 on 2018/12/15.
//  Copyright © 2018 Ribast. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var targetView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapStartButton(_ sender: Any) {
        // ビューの角を丸くする処理をアニメーションで表現する
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        
        /* アニメーション設定 */
        // タイミング設定
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.default)
        // 変更前の値
        animation.fromValue = 0
        // 変更後の値
        animation.toValue = 20
        // アニメーション時間
        animation.duration = 1
        
        // アニメーションをレイヤーに追加
        targetView.layer.add(animation, forKey: "cornerRadius")
        // アニメーション終了後の状態
        targetView.layer.cornerRadius = 20
    }
    
}


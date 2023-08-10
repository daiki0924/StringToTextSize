//
//  ViewController.swift
//  StringToTextSize
//
//  Created by Daiki Kobayashi on 2023/08/10.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    private let strings: [String] = [
        "文字列: 123456789",
        "文字列: 123456789,112233445566778899,111222333444555666777888999",
        "文字列 改行あり: 123456789,112233445566778899,\n111222333444555666777888999"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction private func didTap(_ sender: Any) {
        let random = Int.random(in: 0..<strings.count)
        label.text = strings[random]
        // label.textに文字列を設定してもすぐにレイアウトに反映されないため文字列反映前のサイズが取得される
        print("labelサイズ: \(label.frame.size)")
        
        // 文字列からサイズを取得できるためレイアウトに反映される前に文字列反映後のサイズが取得できる (微差は生じる)
        // 表示される時に改行される場合でも文字列に改行文字が含まれていない場合は1行で表示される場合のサイズが取得できる
        print("文字列サイズ: \((label.text ?? "").toTextSize(font: label.font))")
    }
}

